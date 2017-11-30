package {
import flash.display.Sprite;

public class trace_object extends Sprite {
    public function trace_object() {
        var test:Object = {
            a: '123',
            b: 4,
            c: {
                d: '123',
                e: 4,
                f: {
                    h: [1, 2, 3]
                }
            }
        };
        traceObject(test);
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

