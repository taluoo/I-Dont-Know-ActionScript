package {
import flash.display.Sprite;
import flash.events.Event;
import flash.external.ExternalInterface;

/**
 * 编译：
 * mxmlc -swf-version=24 -o exception24.swf src/exception.as
 * mxmlc -swf-version=25 -o exception25.swf src/exception.as
 * 用来测试 https://alf.nu/FlashXssTraps
 */
public class exception extends Sprite {
    public function exception() {
        if (stage) {
            this.init();
        }
        else {
            addEventListener(Event.ADDED_TO_STAGE, this.init);
        }
    }

    private function init(param1:Event = null):void {
        removeEventListener(Event.ADDED_TO_STAGE, this.init);
        ExternalInterface.marshallExceptions = true;
        // 抛出异常给 JS
        ExternalInterface.addCallback("throwException", function (param1:*):* {
            throw new Error(param1);
        });
        // jsFunction 抛出异常
        ExternalInterface.addCallback("sendDataToJS", function (param1:*):* {
            ExternalInterface.call("jsFunction", param1);
        });
        ExternalInterface.call("__flash_init");
    }
}
}
