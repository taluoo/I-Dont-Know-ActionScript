package {

import flash.display.LoaderInfo;
import flash.display.Sprite;
import flash.text.TextField;

public class flashvars extends Sprite {
    public function flashvars() {
        var textField:TextField = new TextField();
        textField.text = "Hello, World";
        addChild(textField);
        var param:Object = LoaderInfo(root.loaderInfo).parameters;
        traceObject(param)
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
}
