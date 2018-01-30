class test {
    function test(scope:MovieClip) {

        trace('hello world');
        scope.loadMovie(_root.url);
    }

    //Main Entry Point
    static function main() {
        trace('function main');
        var test:test = new test(_root);

    }
}