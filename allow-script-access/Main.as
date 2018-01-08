package {

import flash.display.Sprite;
import flash.external.ExternalInterface;

public class Main extends Sprite {
    public function Main() {
        log('hello world!!');
    }

    public function log(msg: String): void {
        ExternalInterface.call("console.log", "message from flash: " + msg);
    }
}
}