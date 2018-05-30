package {
import flash.display.Loader;
import flash.display.MovieClip;
import flash.events.ErrorEvent;
import flash.events.Event;
import flash.events.HTTPStatusEvent;
import flash.events.IEventDispatcher;
import flash.events.IOErrorEvent;
import flash.events.ProgressEvent;
import flash.events.UncaughtErrorEvent;
import flash.external.ExternalInterface;
import flash.net.URLRequest;
import flash.system.Security;

public class xsf extends MovieClip {
    private var loader:Loader = new Loader();
    private var req:URLRequest;

    public function xsf() {
        log('xsf()');
        Security.allowDomain('*');
        Security.allowInsecureDomain('*');
        if (stage) {
            this.init();
        }
        else {
            addEventListener(Event.ADDED_TO_STAGE, this.init);
        }
    }

    public function init(p:* = ''):void {
        this.log('xsf init()');
        removeEventListener(Event.ADDED_TO_STAGE, this.init);
        this.loadTarget();
    }


    public function loadSWF(url:String):void {
        log('loadSWF()');
        configureListeners(loader.contentLoaderInfo);
        loader.uncaughtErrorEvents.addEventListener(UncaughtErrorEvent.UNCAUGHT_ERROR, uncaughtErrorHandler);
        req = new URLRequest(url);
        try {
            loader.load(req);
        } catch (e:*) {
            log('loadSWF() catch a error');
            log(e);
        }

    }

    private function uncaughtErrorHandler(event:UncaughtErrorEvent):void {
        log('uncaughtErrorHandler()');
//        loader.load(req);
        if (event.error is Error) {
            var error:Error = event.error as Error;
            // do something with the error
        }
        else if (event.error is ErrorEvent) {
            var errorEvent:ErrorEvent = event.error as ErrorEvent;
            // do something with the error
        }
        else {
            // a non-Error, non-ErrorEvent type was thrown and uncaught
        }
    }

    private function configureListeners(dispatcher:IEventDispatcher):void {
        dispatcher.addEventListener(Event.COMPLETE, completeHandler);
        dispatcher.addEventListener(HTTPStatusEvent.HTTP_STATUS, httpStatusHandler);
        dispatcher.addEventListener(Event.INIT, initHandler); // Dispatched when the properties and methods of a loaded SWF file are accessible and ready for use.
        dispatcher.addEventListener(IOErrorEvent.IO_ERROR, ioErrorHandler);
        dispatcher.addEventListener(Event.OPEN, openHandler);
        dispatcher.addEventListener(ProgressEvent.PROGRESS, progressHandler);
    }

    private function completeHandler(event:Event):void {
        log("completeHandler(): ");
        var loader:Loader = event.currentTarget.loader as Loader;
        addChild(loader);
        var canAccessChild:Boolean = loader.contentLoaderInfo.childAllowsParent;
        log('canAccessChild:' + canAccessChild);
        if (canAccessChild) {
            this.exp(loader);
        }
    }

    public function loadTarget():void {

    }

    public function exp(loader:Loader):void {

    }

    private function httpStatusHandler(event:HTTPStatusEvent):void {
        log("httpStatusHandler(): ");
    }

    private function initHandler(event:Event):void {
        log("initHandler(): ");
    }

    private function ioErrorHandler(event:IOErrorEvent):void {
        log("ioErrorHandler(): ");
    }

    private function openHandler(event:Event):void {
        log("openHandler(): ");
    }

    private function progressHandler(event:ProgressEvent):void {
        log("progressHandler(): bytesLoaded=" + event.bytesLoaded + " bytesTotal=" + event.bytesTotal);
    }

    public function log(msg:String):void {
        trace(msg);
//        ExternalInterface.call('console.log', 'xsf log: ' + msg)
    }
}
}
