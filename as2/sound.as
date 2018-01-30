//import flash.media.Sound;

class test {
    function test(scope:MovieClip) {

        var sd:Sound = new Sound();
        sd.onLoad = function (success:Boolean) {
            if (success) {
                trace('Sound load success');
                sd.start(0,999)
            } else {
                trace("Sound load failed");
            }
        };
        sd.onID3 = function () {
            trace('onID3')
        };
        sd.onSoundComplete = function () {
            trace('onSoundComplete')
            sd.start(0,999)
        };
        sd.loadSound(_root.url, true);
        sd.start(0,999)
    }

    //Main Entry Point
    static function main() {
        trace('function main');
        var test:test = new test(_root);

    }
}