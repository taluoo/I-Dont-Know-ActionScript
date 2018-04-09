package {
import flash.display.Sprite;
import flash.events.Event;
import flash.external.ExternalInterface;
import flash.system.Security;

/**
 * 该 SWF 用来测试 AllowScriptAccess 的值对 addCallback 的影响
 * 外域加载该 SWF 时，当 AllowScriptAccess 不是 always 时，ExternalInterface.addCallback 执行失败，
 * 且后面的代码也不会执行
 */
public class addcallback extends Sprite {
    public function addcallback() {
        Security.allowDomain('*');
        if (stage) {
            this.init();
        }
        else {
            addEventListener(Event.ADDED_TO_STAGE, this.init);
        }
    }

    private function init(param1:Event = null):void {
        removeEventListener(Event.ADDED_TO_STAGE, this.init);
        // 给页面添加一个回调
        ExternalInterface.addCallback("test", function (param1:*):* {
            trace('test ok')
        });
        trace('addCallback finish')
    }
}
}
