class Test {

    static function testASFun(arg) {
        trace(arg);
    }

    function Test(scope:MovieClip) {
        scope.opaqueBackground = 0xCCCCCC;
        var myFormat:TextFormat = new TextFormat();
        myFormat.size = 20;

        var list_txt:TextField = scope.createTextField("list_txt", scope.getNextHighestDepth(), 0, 0, 200, 100);
        list_txt.autoSize = true;
        list_txt.html = true;
        list_txt.multiline = true;
        list_txt.setTextFormat(myFormat);



        list_txt.htmlText = "<a href='http://www.kennybunch.com/blog/wp-admin/asfunction:testASFun,testParam'>asfunction</a><br>";
        list_txt.htmlText += "<a href=\"asfunction:TEST.testASFun, track2.mp3\">asfunction:testASFun, track2.mp3</a><br>";
        list_txt.htmlText += "<a href=\"javascript:alert(876)\">javascript:alert(876)</a><br>";
        list_txt.htmlText += "<img src='https://qqqqq.cf/actionscript2/Xss.swf'>img src fetch swf <br>";

    }


    //Main Entry Point
    static function main() {
        trace('function main');
        var test:Test = new Test(_root);
    }
}
