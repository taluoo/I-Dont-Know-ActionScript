package {

import flash.display.Sprite;
import flash.external.ExternalInterface;
import flash.text.TextField;

public class helloworld extends Sprite {
    public function helloworld() {
        var textField:TextField = new TextField();
        textField.text = "Hello, World";
        addChild(textField);
        log2js('hello world');
    }

    public function log2js(msg:String):void {
        ExternalInterface.call("console.log", "message from flash: " + msg);
    }
}
}
