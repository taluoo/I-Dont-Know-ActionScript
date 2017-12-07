package {
import flash.display.Sprite;
import flash.events.AsyncErrorEvent;
import flash.events.Event;
import flash.events.NetStatusEvent;
import flash.external.ExternalInterface;
import flash.media.Video;
import flash.net.NetConnection;
import flash.net.NetStream;
import flash.net.URLRequest;
import flash.net.URLRequest;

public class video_player extends Sprite {

    private var video:Video;
    private var connection:NetConnection;
    private var stream:NetStream;

    public function video_player() {
        super();
        if (stage) {
            this.init();
        }
        else {
            addEventListener(Event.ADDED_TO_STAGE, this.init);
        }
    }

    private function init(param1:Event = null):void {
        removeEventListener(Event.ADDED_TO_STAGE, this.init);

        ExternalInterface.addCallback('initConnection', initConnection);
        ExternalInterface.addCallback('play', play);
        ExternalInterface.call("__flash_init");
    }

    private function initConnection():void {
        log('initConnection()')
        video = new Video();
        connection = new NetConnection();
        connection.addEventListener(NetStatusEvent.NET_STATUS, netStatusHandler);
        connection.connect(null);
    }

    private function netStatusHandler(event:NetStatusEvent):void {
        log('netStatusHandler: ' + event.info.code);
        switch (event.info.code) {
            case "NetConnection.Connect.Success":
                connectStream();
                break;
            case "NetConnection.Connect.Failed":
                break;
            case "NetConnection.Connect.Rejected":
                break;
            case "NetStream.Play.Stop":
                break;
            case "NetStream.Play.StreamNotFound":
                trace("Stream not found: ");
                break;
        }
    }

    private function connectStream():void {
        log('connectStream()');
        addChild(video);
        stream = new NetStream(connection);
        stream.addEventListener(NetStatusEvent.NET_STATUS, netStatusHandler);
        stream.addEventListener(AsyncErrorEvent.ASYNC_ERROR, asyncErrorHandler);
        stream.client = new CustomClient();
        video.attachNetStream(stream);

        ExternalInterface.call('__stream_ready');
    }

    private function play(videoURL:String):void {
        log('start play, url: ' + videoURL);
        stream.play(videoURL);
    }

    private function asyncErrorHandler(event:AsyncErrorEvent):void {
        trace('asyncErrorHandler');
    }

    private function log(msg:String):void {
        ExternalInterface.call('console.log', 'flash log: ' + msg)
    }
}
}
class CustomClient {
    public function onMetaData(info:Object):void {
//        trace("metadata: duration=" + info.duration + " width=" + info.width + " height=" + info.height + " framerate=" + info.framerate);
        traceObject(info);
    }

    public function onCuePoint(info:Object):void {
//        trace("cuepoint: time=" + info.time + " name=" + info.name + " type=" + info.type);
        traceObject(info);
    }

    public function traceObject(obj:Object, indent:uint = 0):void {
        var indentString:String = "";
        var i:uint;
        var prop:String;
        var val:*;
        for (i = 0; i < indent; i++) {
            indentString += "\t";
        }
        for (prop in obj) {
            val = obj[prop];
            if (typeof(val) == "object") {
                trace(indentString + " " + prop + ": [Object]");
                traceObject(val, indent + 1);
            }
            else {
                trace(indentString + " " + prop + ": " + val);
            }
        }
    }
}