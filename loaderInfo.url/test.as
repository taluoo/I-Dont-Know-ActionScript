package {
import flash.display.Sprite;
import flash.events.Event;
import flash.external.ExternalInterface;

public class test extends Sprite {

// 用来测试 loaderInfo.url 的编码情况
    public function test() {
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
        trace(this.loaderInfo.url);
        ExternalInterface.call("console.log", this.loaderInfo.url);
    }
}
}