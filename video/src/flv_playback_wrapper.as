package {
import flash.display.Sprite;
import flash.events.Event;
import flash.external.ExternalInterface;

import fl.video.FLVPlayback;

// 编译：
// cd video
// mxmlc -o flv_playback_wrapper.swf src/flv_playback_wrapper.as -library-path+=../lib/FLVPlayback2.5/adobe/fms/samples/FLVPlayback_2.5.swc


public class flv_playback_wrapper extends Sprite {

    private var _player:FLVPlayback;

    public function flv_playback_wrapper() {
        super();
        if (stage) {
            this.init();
        }
        else {
            addEventListener(Event.ADDED_TO_STAGE, this.init);
        }
    }

    private function init(param1:Event = null):void {
        log('flash start init');
        removeEventListener(Event.ADDED_TO_STAGE, this.init);
        this._player = new FLVPlayback();
        _player.x = 100;
        _player.y = 100;
        addChild(_player);
        ExternalInterface.addCallback('load', load);
        ExternalInterface.call("__flash_init");
    }

    private function load(url:String):void {
        log('start load, url: ' + url);
        _player.source = url;
    }

    private function log(msg:String):void {
        ExternalInterface.call('console.log', 'flash log: ' + msg);
    }
}
}