package {
import flash.display.Sprite;
import flash.events.Event;
import flash.events.IOErrorEvent;
import flash.events.ProgressEvent;
import flash.external.ExternalInterface;
import flash.media.ID3Info;
import flash.media.Sound;
import flash.media.SoundLoaderContext;
import flash.net.URLRequest;

public class audioplayer extends Sprite {

    private var sound:Sound;

    public function audioplayer() {
        super();
        if (stage) {
            this.init();
        }
        else {
            addEventListener(Event.ADDED_TO_STAGE, this.init);
        }
    }

    public function init():void {
        removeEventListener(Event.ADDED_TO_STAGE, this.init);
        ExternalInterface.addCallback('load', load);
        ExternalInterface.addCallback('play', play);
        ExternalInterface.call("__flash_init");
    }

    public function load(url:String, checkPolicyFile:Boolean = true):void {
        this.log('开始加载');
        this.log('url: ' + url);
        this.log('是否加载策略文件：' + String(checkPolicyFile));
        sound = new Sound();
        sound.addEventListener(ProgressEvent.PROGRESS, onLoadProgress);
        sound.addEventListener(Event.COMPLETE, onLoadComplete);
        sound.addEventListener(IOErrorEvent.IO_ERROR, onIOError);
        sound.addEventListener(Event.ID3, onID3);
        var req:URLRequest = new URLRequest(url);
        var context:SoundLoaderContext = new SoundLoaderContext(3000, checkPolicyFile);
        sound.load(req, context);
    }

    public function play():void {
        sound.play();
    }

    private function onLoadProgress(event:ProgressEvent):void {
        var loadedPct:uint = Math.round(100 * (event.bytesLoaded / event.bytesTotal));
//        this.log("The sound is " + loadedPct + "% loaded.");
    }

    private function onLoadComplete(event:Event):void {
        this.log("onLoadComplete");
        this.play();
    }

    private function onIOError(event:IOErrorEvent):void {
        this.log("onIOError: The sound could not be loaded: " + event.text);
    }

    private function onID3(event:Event):void {
        var id3:ID3Info = event.target.id3;

        this.log("onID3: Received ID3 Info:");
        for (var propName:String in id3) {
            this.log(propName + " = " + id3[propName]);
        }
    }

    private function log(msg:String):void {
        ExternalInterface.call('console.log', msg);
    }
}
}