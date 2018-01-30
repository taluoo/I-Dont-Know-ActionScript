class helloworld {
    function helloworld(scope:MovieClip) {
        trace('hello world');
    }

    //Main Entry Point
    static function main() {
        trace('function main');
        var test:helloworld = new helloworld(_root);
    }
}