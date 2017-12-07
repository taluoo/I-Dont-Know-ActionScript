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

public class rtmp_player extends Sprite {

    private var video:Video;
    private var connection:NetConnection;
    private var stream:NetStream;

    public function rtmp_player() {
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

    private function initConnection(connectionStr:String):void {
        log('initConnection to: ' + connectionStr);
        video = new Video();
        connection = new NetConnection();
        connection.addEventListener(NetStatusEvent.NET_STATUS, netStatusHandler);
        connection.addEventListener(AsyncErrorEvent.ASYNC_ERROR, asyncErrorHandler);
        connection.connect(connectionStr);
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

    private function asyncErrorHandler(event:AsyncErrorEvent):void {
        trace('asyncErrorHandler');
    }

    private function connectStream():void {
        addChild(video);
        stream = new NetStream(connection);
        stream.addEventListener(NetStatusEvent.NET_STATUS, netStatusHandler);
        stream.addEventListener(AsyncErrorEvent.ASYNC_ERROR, asyncErrorHandler);
        stream.client = this;
        video.attachNetStream(stream);

        ExternalInterface.call('__stream_ready');
    }

    private function play(videoURL:String):void {
        log('start play, url: ' + videoURL);
        stream.play(videoURL);
    }

    private function log(msg:String):void {
        ExternalInterface.call('console.log', 'flash log: ' + msg)
    }

    public function onBWDone(...rest):void {
        var p_bw:Number;
        if (rest.length > 0) {
            p_bw = rest[0];
        }
        trace("bandwidth = " + p_bw + " Kbps.");
    }

    public function onMetaData(info:Object):void {
        log('onMetaData');
//        trace("metadata: duration=" + info.duration + " width=" + info.width + " height=" + info.height + " framerate=" + info.framerate);
        traceObject(info);
    }

    public function onCuePoint(info:Object):void {
        log('onCuePoint');
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
                log(indentString + " " + prop + ": [Object]");
                traceObject(val, indent + 1);
            }
            else {
                trace(indentString + " " + prop + ": " + val);
                log(indentString + " " + prop + ": " + val);
            }
        }
    }
}
}
