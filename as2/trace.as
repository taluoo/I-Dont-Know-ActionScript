class Test {
    function Test(scope:MovieClip) {
        trace('function test');
        scope.opaqueBackground = 0xCCCCCC;
        trace('scope === _root');
        trace(scope === _root);
//        trace('a:');
//        trace(a); // 报错 trace.as:8: characters 14-15 : type error Unknown variable a
        trace('scope.a');
        trace(scope.a);
        trace('_root.a');
        trace(_root.a);
        trace('_global.a');
        trace(_global.a); // 跟其它值不一样
        trace('_level0.a');
        trace(_level0.a);
    }


    //Main Entry Point
    static function main() {
        trace('function main');
//        trace(a);
        var test:Test = new Test(_root);
    }
}
