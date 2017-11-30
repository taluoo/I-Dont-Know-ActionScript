package {
import flash.display.Sprite;
import flash.events.Event;
import flash.external.ExternalInterface;

public class flash_init extends Sprite {


    public function flash_init() {
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
        ExternalInterface.call("__flash_init");
    }
}
}