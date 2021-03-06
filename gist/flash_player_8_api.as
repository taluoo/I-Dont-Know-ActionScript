// from https://web.archive.org/web/20081211181539/http://script.com.ua:80/dev/materials.php?id=11
// decoded by MSA [15.07.2005]
function MovieClip(){}
function XMLSocket(){}
function AsBroadcaster(){}
function Color(target){
    this.target = target;
    ASSetPropFlags(this, null, 7);
}
function NetConnection(){
    this.isConnected = false;
    ASSetPropFlags(this, null, 7);
    ASnative(2100, 200)(this);
}
function NetStream(connection){
    function OnCreate(nStream){
        this.nStream = nStream;
    }
    ASnative(2101, 200)(this, connection);
    var _l2 = OnCreate.prototype;
    _l2.onResult = function (streamId){
        ASnative(2101, 201)(this.nStream, streamId);
    };
    streamId.onStatus = function (info){
        this.nStream.onStatus(info);
    };
    connection.call("createStream", new OnCreate(this));
}
function Camera(){}
function Microphone(){}
function SharedObject(){}
function LocalConnection(){}
function ContextMenuItem(capt, cb, sepBefore, enab, vis){
    this.caption = capt;
    this.onSelect = cb;
    this.separatorBefore = sepBefore == undefined ? (false) : (sepBefore);
    this.enabled = enab == undefined ? (true) : (enab);
    this.visible = vis == undefined ? (true) : (vis);
}
function ContextMenu(cb){
    this.onSelect = cb;
    this.builtInItems = {save: true, zoom: true, quality: true, play: true, loop: true, rewind: true, forward_back: true, print: true};
    this.customItems = new Array();
}
function Error(m){
    if (typeof(m) != "undefined") {
        this.message = m;
    }
}
function AsSetupError(s) {
    var _l6 = s.split(",");
    var _l3 = 0;
    while (_l3 < _l6.length){
        var _l4 = _l6[_l3];
        var _l5 = function (m)
        {
            this.message = m;
        };
        var _l2 = new Error();
        _l5.prototype = _l2;
        _l2.name = _l4;
        _l2.message = _l4;
        ++_l3;
    }
}
function RemoteLSOUsage(){}
ASSetPropFlags = ASnative(1, 0);
ASSetNative = ASnative(4, 0);
ASSetNativeAccessor = ASnative(4, 1);
escape = ASnative(100, 0);
unescape = ASnative(100, 1);
parseInt = ASnative(100, 2);
parseFloat = ASnative(100, 3);
trace = ASnative(100, 4);
updateAfterEvent = ASnative(9, 0);
isNaN = ASnative(200, 18);
isFinite = ASnative(200, 19);
setInterval = ASnative(250, 0);
clearInterval = clearTimeout = ASnative(250, 1);
setTimeout = ASnative(250, 2);
showRedrawRegions = ASnative(1021, 1);
var o = Object.prototype;
ASSetNative(o, 101, "6watch,6unwatch,6addProperty,valueOf,toString,6hasOwnProperty,6isPrototypeOf,6isPropertyEnumerable");
o.toLocaleString = function (){
    return (this.toString());
};
Object.registerClass = ASnative(101, 8);
ASSetPropFlags(o, null, 3);
ASSetPropFlags(Object, null, 7);
var o = Function.prototype;
ASSetNative(o, 101, "6call,6apply", 10);
ASSetPropFlags(o, null, 3);
Number = ASconstructor(106, 2);
var o = Number.prototype;
ASSetNative(o, 106, "valueOf,toString");
ASSetPropFlags(o, null, 3);
var o = Number;
o.NaN = NaN;
o.POSITIVE_INFINITY = Infinity;
o.NEGATIVE_INFINITY = -Infinity;
o.MIN_VALUE = 0;
o.MAX_VALUE = Number.MAX_VALUE;
ASSetPropFlags(o, null, 7);
Boolean = ASconstructor(107, 2);
var o = Boolean.prototype;
ASSetNative(o, 107, "valueOf,toString");
ASSetPropFlags(o, null, 3);
Date = ASconstructor(103, 256);
var o = Date.prototype;
ASSetNative(o, 103,
        "getFullYear,getYear,getMonth,getDate,getDay,getHours,getMinutes,getSeconds,getMilliseconds,setFullYear,setMonth,setDate,setHours,setMinutes,setSeconds,setMilliseconds,getTime,setTime,getTimezoneOffset,toString,setYear");
ASSetNative(o, 103,
        "getUTCFullYear,getUTCYear,getUTCMonth,getUTCDate,getUTCDay,getUTCHours,getUTCMinutes,getUTCSeconds,getUTCMilliseconds,setUTCFullYear,setUTCMonth,setUTCDate,setUTCHours,setUTCMinutes,setUTCSeconds,setUTCMilliseconds",
        128);
o.valueOf = o.getTime;
Date.UTC = ASnative(103, 257);
ASSetPropFlags(o, null, 3);
ASSetPropFlags(Date, null, 7);
String = ASconstructor(251, 0);
var o = String.prototype;
ASSetNative(o, 251, "valueOf,toString,toUpperCase,toLowerCase,charAt,charCodeAt,concat,indexOf,lastIndexOf,slice,substring,split,substr", 1);
String.fromCharCode = ASnative(251, 14);
ASSetPropFlags(o, null, 3);
ASSetPropFlags(String, null, 3);
Array = ASconstructor(252, 0);
var o = Array.prototype;
ASSetNative(o, 252, "push,pop,concat,shift,unshift,slice,join,splice,toString,sort,reverse,sortOn", 1);
ASSetPropFlags(o, null, 3);
var o = Array;
o.CASEINSENSITIVE = 1;
o.DESCENDING = 2;
o.UNIQUESORT = 4;
o.RETURNINDEXEDARRAY = 8;
o.NUMERIC = 16;
Math = {E: 2.718282, LN10: 2.302585, LN2: 0.693147, LOG10E: 0.434294, LOG2E: 1.442695, PI: 3.141593, SQRT1_2: 0.707107, SQRT2: 1.414214};
ASSetNative(Math, 200, "abs,min,max,sin,cos,atan2,tan,exp,log,sqrt,round,random,floor,ceil,atan,asin,acos,pow");
ASSetPropFlags(Math, null, 7);
Sound = ASconstructor(500, 16);
var o = Sound.prototype;
ASSetNative(o, 500,
        "getPan,getTransform,getVolume,setPan,setTransform,setVolume,stop,attachSound,start,6getDuration,6setDuration,6getPosition,6setPosition,6loadSound,6getBytesLoaded,6getBytesTotal");
ASSetPropFlags(o, null, 7);
var o = MovieClip;
o.BlendModeType = {};
o.BlendModeType.NORMAL = "normal";
o.BlendModeType.LAYER = "layer";
o.BlendModeType.MULTIPLY = "multiply";
o.BlendModeType.SCREEN = "screen";
o.BlendModeType.LIGHTEN = "lighten";
o.BlendModeType.DARKEN = "darken";
o.BlendModeType.DIFFERENCE = "difference";
o.BlendModeType.ADD = "add";
o.BlendModeType.SUBTRACT = "subtract";
o.BlendModeType.INVERT = "invert";
o.BlendModeType.ALPHA = "alpha";
o.BlendModeType.INVERT = "invert";
o.BlendModeType.OVERLAY = "overlay";
o.BlendModeType.HARDLIGHT = "hardlight";
ASSetPropFlag(o, "BlendModeType", 4096);
var o = MovieClip.prototype;
o.useHandCursor = true;
o.enabled = true;
ASSetNativeAccessor(o, 900, "tabIndex", 200);
ASSetNativeAccessor(o, 900, "_lockroot", 300);
ASSetNativeAccessor(o, 900, "8cacheAsBitmap,8opaqueBackground,8scrollRect", 401);
ASSetNativeAccessor(o, 900, "8filters,8transform", 417);
ASSetNativeAccessor(o, 900, "8blendMode", 500);
ASSetNativeAccessor(o, 901, "8scale9Grid", 12);
o.meth = function (method){
    var _l1 = method.toLowerCase();
    if (_l1 == "get") {
        return (1);
    } else if (_l1 == "post") {
        return (2);
    }
    return (0);
};
o.getURL = function (url, window, method) {
    if (typeof(window) == "undefined") {
        var _l2 = "";
    }
    var _l3 = this.meth(method);
    tellTarget(this._target) {
        if (_l3 == 0) {
            getURL(url, _l2);
        } else if (_l3 == 1) {
            getURL(url, _l2, "GET");
        } else {
            getURL(url, _l2, "POST");
        }
    }
};
o.unloadMovie = function () {
    unloadMovie(this._target);
};
o.loadVariables = function (url, method) {
    var _l3 = this.meth(method);
    tellTarget(this._target) {
        if (_l3 == 0) {
            loadVariables(url, _target);
        } else if (_l3 == 1) {
            loadVariables(url, _target, "GET");
        } else {
            loadVariables(url, _target, "POST");
        }
    }
};
o.loadMovie = function (url, method) {
    var _l3 = this.meth(method);
    tellTarget(this._target) {
        if (_l3 == 0) {
            loadMovie(url, _target);
        } else if (_l3 == 1) {
            loadMovie(url, _target, "GET");
        } else {
            loadMovie(url, _target, "POST");
        }
    }
};
ASSetNative(o, 900,
        "attachMovie,swapDepths,localToGlobal,globalToLocal,hitTest,getBounds,getBytesTotal,getBytesLoaded,6attachAudio,6attachVideo,6getDepth,6setMask,play,stop,nextFrame,prevFrame,gotoAndPlay,gotoAndStop,duplicateMovieClip,removeMovieClip,startDrag,stopDrag,7getNextHighestDepth,7getInstanceAtDepth,getSWFVersion,8attachBitmap,8getRect");
ASSetNative(o, 901,
        "6createEmptyMovieClip,6beginFill,6beginGradientFill,6moveTo,6lineTo,6curveTo,6lineStyle,6endFill,6clear,8lineGradientStyle,8beginMeshFill,8beginBitmapFill");
o.createTextField = ASnative(104, 200);
ASSetPropFlags(o, null, 3);
XMLNode = ASconstructor(253, 0);
var o = XMLNode.prototype;
ASSetNative(o, 253, "cloneNode,removeNode,insertBefore,appendChild,hasChildNodes,toString,getNamespaceForPrefix,getPrefixForNamespace", 1);
XML = ASconstructor(253, 9);
XML.prototype = new XMLNode(1, "");
var o = XML.prototype;
ASSetNative(o, 253, "createElement,createTextNode,parseXML", 10);
o.load = ASnative(301, 0);
o.send = ASnative(301, 1);
o.sendAndLoad = ASnative(301, 2);
o.onLoad = function () {};
o.onData = function (src) {
    if (src == undefined) {
        this.onLoad(false);
    } else {
        this.parseXML(src);
        this.loaded = true;
        this.onLoad(true);
    }
};
o.getBytesLoaded = function () {
    return (this._bytesLoaded);
};
o.getBytesTotal = function () {
    return (this._bytesTotal);
};
o.addRequestHeader = function (key, value) {
    if (typeof(this._customHeaders) == "undefined") {
        this._customHeaders = new Array();
        ASSetPropFlags(this, "_customHeaders", 131);
    }
    if (typeof(key) == "string" && typeof(value) == "string") {
        this._customHeaders.push(key, value);
    }
    else if (key instanceof Array) {
        var _l2 = 0;
        while (_l2 < key.length) {
            if (_l2 + 1 < key.length) {
                this.addRequestHeader(key[_l2], key[_l2 + 1]);
            }
            _l2 = _l2 + 2;
        }
    }
};
LoadVars = ASconstructor(253, 13);
var o = LoadVars.prototype;
ASSetNative(o, 301, "load,send,sendAndLoad,decode");
o.getBytesLoaded = function () {
    return (this._bytesLoaded);
};
o.getBytesTotal = function () {
    return (this._bytesTotal);
};
o.toString = function () {
    var _l2 = [];
    for (var _l3 in this) {
        _l2.push(escape(_l3) + "=" + escape(this[_l3]));
    }
    return (_l2.join("&"));
};
o.contentType = "application/x-www-form-urlencoded";
o.onLoad = function () {};
o.onData = function (src) {
    if (src == undefined) {
        this.onLoad(false);
    } else {
        this.decode(src);
        this.loaded = true;
        this.onLoad(true);
    }
};
o.addRequestHeader = function (key, value) {
    if (typeof(this._customHeaders) == "undefined") {
        this._customHeaders = new Array();
        ASSetPropFlags(this, "_customHeaders", 131);
    }
    if (typeof(key) == "string" && typeof(value) == "string") {
        this._customHeaders.push(key, value);
    } else if (key instanceof Array) {
        var _l2 = 0;
        while (_l2 < key.length) {
            if (_l2 + 1 < key.length){
                this.addRequestHeader(key[_l2], key[_l2 + 1]);
            }
            _l2 = _l2 + 2;
        }
    }
};
ASSetPropFlags(o, null, 131);
var o = XMLSocket.prototype;
ASSetNative(o, 400, "connect,send,close");
o.onData = function (src) {
    this.onXML(new XML(src));
};
ASSetPropFlags(o, null, 3);
var o = AsBroadcaster;
o.broadcastMessage = ASnative(101, 12);
o.addListener = function (x) {
    this.removeListener(x);
    this._listeners.push(x);
    return (true);
};
o.removeListener = function (x) {
    var _l3 = this._listeners;
    var _l2 = 0;
    while (_l2 < _l3.length){
        if (_l3[_l2] == x){
            _l3.splice(_l2, 1);
            return (true);
        }
        ++_l2;
    }
    return (false);
};
o.initialize = function (o) {
    o.broadcastMessage = ASnative(101, 12);
    o.addListener = AsBroadcaster.addListener;
    o.removeListener = AsBroadcaster.removeListener;
    o._listeners = [];
    ASSetPropFlags(o, "broadcastMessage,addListener,removeListener,_listeners", 131);
};
ASSetPropFlags(o, null, 131);
Selection = {};
ASSetNative(Selection, 600, "getBeginIndex,getEndIndex,getCaretIndex,getFocus,setFocus,setSelection");
AsBroadcaster.initialize(Selection);
ASSetPropFlags(Selection, null, 7);
var o = Color.prototype;
ASSetNative(o, 700, "setRGB,setTransform,getRGB,getTransform");
ASSetPropFlags(o, null, 7);
Mouse = {};
ASSetNative(Mouse, 5, "show,hide");
AsBroadcaster.initialize(Mouse);
ASSetPropFlags(Mouse, null, 7);
Key = {ALT: 18, ENTER: 13, SPACE: 32, UP: 38, DOWN: 40, LEFT: 37, RIGHT: 39, PGUP: 33, PGDN: 34, HOME: 36, END: 35, TAB: 9, CONTROL: 17, SHIFT: 16, ESCAPE:
        27, INSERT: 45, DELETEKEY: 46, BACKSPACE: 8, CAPSLOCK: 20};
ASSetNative(Key, 800, "getAscii,getCode,isDown,isToggled,8isAccessible");
AsBroadcaster.initialize(Key);
ASSetPropFlags(Key, null, 7);
Button = ASconstructor(105, 0);
var o = Button.prototype;
o.useHandCursor = true;
o.enabled = true;
o.getDepth = ASnative(105, 3);
ASSetNativeAccessor(o, 105, "8scale9Grid,8filters,8cacheAsBitmap,8blendMode", 4);
TextField = ASconstructor(104, 0);
var o = TextField.prototype;
ASSetNative(o, 104, "6replaceSel,6getTextFormat,6setTextFormat,6removeTextField,6getNewTextFormat,6setNewTextFormat,6getDepth,7replaceText", 100);
AsBroadcaster.initialize(o);
ASSetPropFlags(o, null, 131);
TextField.getFontList = ASnative(104, 201);
ASSetPropFlags(TextField, null, 131);
ASSetNativeAccessor(o, 104, "8gridFitType,8antiAliasType,8thickness,8sharpness,8filters", 300);
TextField.StyleSheet = ASconstructor(113, 0);
var o = TextField.StyleSheet.prototype;
o._copy = function (o) {
    if (typeof(o) != "object") {
        return (null);
    }
    var _l2 = {};
    for (var _l3 in o) {
        _l2[_l3] = o[_l3];
    }
    return (_l2);
};
o.getStyle = function (n) {
    return (this._copy(this._css[n]));
};
o.setStyle = function (n, s) {
    if (!this._css) {
        this._css = {};
    }
    var _l2 = typeof(o);
    if (_l2 == "object" || _l2 == "null" || _l2 == "undefined") {
        this._css[n] = this._copy(s);
        this.doTransform(n);
        this.update();
    }
};
o.clear = function () {
    this._css = {};
    this._styles = {};
    this.update();
};
o.getStyleNames = function () {
    var _l2 = [];
    for (var _l3 in this._css) {
        _l2.push(_l3);
    }
    return (_l2);
};
o.doTransform = function (n) {
    var _l2 = this.transform(this._css[n]);
    if (!this._styles) {
        this._styles = {};
    }
    this._styles[n] = _l2;
};
o.transform = function (o) {
    if (o == null) {
        return (null);
    }
    var _l2 = new TextFormat();
    var _l4 = o.textAlign;
    if (_l4) {
        _l2.align = _l4;
    }
    _l4 = o.fontSize;
    if (_l4) {
        _l4 = parseInt(_l4);
        if (_l4 > 0) {
            _l2.size = _l4;
        }
    }
    _l4 = o.textDecoration;
    if (_l4 == "none") {
        _l2.underline = false;
    }
    else if (_l4 == "underline") {
        _l2.underline = true;
    }
    _l4 = o.marginLeft;
    if (_l4) {
        _l2.leftMargin = parseInt(_l4);
    }
    _l4 = o.marginRight;
    if (_l4) {
        _l2.rightMargin = parseInt(_l4);
    }
    _l4 = o.leading;
    if (_l4) {
        _l2.leading = parseInt(_l4);
    }
    _l4 = o.kerning;
    if (_l4 == "true") {
        _l2.kerning = 1;
    } else if (_l4 == "false") {
        _l2.kerning = 0;
    } else {
        _l2.kerning = parseInt(_l4);
    }
    _l4 = o.letterSpacing;
    if (_l4) {
        _l2.letterSpacing = parseInt(_l4);
    }
    _l4 = o.fontFamily;
    if (_l4) {
        _l2.font = this.parseCSSFontFamily(_l4);
    }
    _l2.display = o.display;
    _l4 = o.fontWeight;
    if (_l4 == "bold") {
        _l2.bold = true;
    } else if (_l4 == "normal") {
        _l2.bold = false;
    }
    _l4 = o.fontStyle;
    if (_l4 == "italic") {
        _l2.italic = true;
    } else if (_l4 == "normal") {
        _l2.italic = false;
    }
    _l4 = o.textIndent;
    if (_l4) {
        _l2.indent = parseInt(_l4);
    }
    _l4 = o.color;
    if (_l4) {
        _l4 = this.parseColor(_l4);
        if (_l4 != null) {
            _l2.color = _l4;
        }
    }
    return (_l2);
};
o.parseCSS = function (s) {
    var _l2 = this.parseCSSInternal(s);
    if (typeof(_l2) == "null") {
        return (false);
    }
    if (!this._css) {
        this._css = {};
    }
    for (var _l3 in _l2) {
        this._css[_l3] = this._copy(_l2[_l3]);
        this.doTransform(_l3);
    }
    this.update();
    return (true);
};
o.parse = o.parseCSS;
o.load = ASnative(301, 0);
o.onLoad = function () {};
o.onData = function (src) {
    if (src == undefined) {
        this.onLoad(false);
    } else {
        var _l2 = this.parse(src);
        this.loaded = _l2;
        this.onLoad(_l2);
    }
};
ASSetNative(o, 113, "7update,7parseCSSInternal,7parseCSSFontFamily,7parseColor", 100);
ASSetPropFlags(o, null, 1027);
ASSetPropFlags(TextField, "StyleSheet", 1027);
TextFormat = ASconstructor(110, 0);
Stage = {width: 0, height: 0, scaleMode: 0, align: ""};
ASSetNativeAccessor(Stage, 666, "scaleMode,align,width,height,showMenu", 1);
AsBroadcaster.initialize(Stage);
Video = ASconstructor(667, 0);
var o = Video.prototype;
ASSetNative(o, 667, "6attachVideo,6clear", 1);
ASSetPropFlags(o, null, 3);
Accessibility = {};
ASSetNative(Accessibility, 1999, "6isActive,6sendEvent,6updateProperties");
ASSetPropFlags(Accessibility, null, 6);
var o = NetConnection.prototype;
ASSetNative(o, 2100, "6connect,6close,6call,6addHeader");
ASSetPropFlags(o, null, 3);
var o = NetStream.prototype;
o.publish = function (name, type) {
    var _l3 = args.length;
    if (_l3 == 1) {
        ASnative(2101, 202)(this, "publish", null, name);
    } else {
        ASnative(2101, 202)(this, "publish", null, name, type);
    }
};
o.play = function (name, start, len, reset) {
    var _l3 = args.length;
    if (_l3 == 1) {
        ASnative(2101, 202)(this, "play", null, name);
    } else if (_l3 == 2) {
        ASnative(2101, 202)(this, "play", null, name, start * 1000);
    } else if (_l3 == 3) {
        ASnative(2101, 202)(this, "play", null, name, start * 1000, len * 1000);
    } else {
        ASnative(2101, 202)(this, "play", null, name, start * 1000, len * 1000, reset);
    }
};
o.receiveAudio = function (flag) {
    ASnative(2101, 202)(this, "receiveAudio", null, flag);
};
o.receiveVideo = function (flag) {
    ASnative(2101, 202)(this, "receiveVideo", null, flag);
};
o.pause = function (flag) {
    ASnative(2101, 202)(this, "pause", null, flag, this.time * 1000);
};
o.seek = function (offset) {
    ASnative(2101, 202)(this, "seek", null, offset * 1000);
};
ASSetNative(o, 2101, "6close,6attachAudio,6attachVideo,6send,6setBufferTime");
ASSetPropFlags(o, null, 3);
Camera.get = function (index) {
    return (ASnative(2102, 200)(index));
};
Camera.addProperty("names", ASnative(2102, 201), null);
var o = Camera.prototype;
ASSetNative(o, 2102, "6setMode,6setQuality,6setKeyFrameInterval,6setMotionLevel,6setLoopback,6setCursor");
ASSetPropFlags(o, null, 3);
Microphone.get = function (index) {
    return (ASnative(2104, 200)(index));
};
Microphone.addProperty("names", ASnative(2104, 201), null);
var o = Microphone.prototype;
ASSetNative(o, 2104, "6setSilenceLevel,6setRate,6setGain,6setUseEchoSuppression");
ASSetPropFlags(o, null, 3);
SharedObject.getLocal = function (name, localPath, secure) {
    var _l1 = ASnative(2106, 202)(name, localPath, secure);
    if (!_l1) {
        _l1 = new SharedObject();
        if (!ASnative(2106, 204)(_l1, name, localPath, secure)) {
            return (null);
        }
    }
    return (_l1);
};
SharedObject.getRemote = function (name, remotePath, options, secure){
    var _l1 = ASnative(2106, 203)(name, remotePath, options, secure);
    if (!_l1) {
        _l1 = new SharedObject();
        if (!ASnative(2106, 205)(_l1, name, remotePath, options, secure)) {
            return (null);
        }
    }
    return (_l1);
};
SharedObject.deleteAll = function (url) {
    return (ASnative(2106, 206)(url));
};
SharedObject.getDiskUsage = function (url) {
    return (ASnative(2106, 207)(url));
};
ASSetPropFlags(SharedObject, "deleteAll,getDiskUsage", 1);
var o = SharedObject.prototype;
ASSetNative(o, 2106, "6connect,6send,6flush,6close,6getSize,6setFps,6clear");
ASSetPropFlags(o, null, 3);
System = {};
System.capabilities = {hasAudio: true, hasMP3: true, hasAudio: true, hasMP3: true, hasAudioEncoder: true, hasVideoEncoder: true, screenResolutionX: 800,
    screenResolutionY: 600, screenDPI: 72, screenColor: "color", pixelAspectRatio: 1, hasAccessibility: true, Query: ASnative(11, 0)};
System.capabilities.Query();
delete System.capabilities.Query;
System.Product = function (strName) {
    this.name = strName;
    ASSetPropFlags(this, null, 7);
};
var o = System.Product.prototype;
o.isRunning = function () {
    return (ASnative(2201, 0)(this.name));
};
o.isInstalled = function () {
    return (ASnative(2201, 1)(this.name));
};
o.launch = function () {
    return (ASnative(2201, 2)(this.name));
};
o.download = function () {
    if (args.length > 0) {
        return (ASnative(2201, 3)(this, this.name, args[0]));
    } else {
        return (ASnative(2201, 3)(this, this.name));
    }
};
o.installedVersion = function () {
    return (ASnative(2201, 4)(this.name));
};
ASSetPropFlags(o, null, 3);
System.showSettings = ASnative(2107, 0);
ASSetNativeAccessor(System, 2107, "exactSettings", 1);
ASSetPropFlags(System, "exactSettings", 128);
flash = {};
ASSetPropFlags(_global, "flash", 4096);
flash.text = {};
flash.text.TextRenderer = ASconstructor(2150, 0);
var textRenderer = flash.text.TextRenderer;
textRenderer.AntiAliasType = {};
textRenderer.AntiAliasType.NORMAL = "normal";
textRenderer.AntiAliasType.ADVANCED = "advanced";
textRenderer.AntiAliasType.GLOBAL_ADVANCED_ANTIALIASING_OFF = "off";
textRenderer.AntiAliasType.GLOBAL_ADVANCED_ANTIALIASING_ON = "on";
textRenderer.AntiAliasType.GLOBAL_ADVANCED_ANTIALIASING_TEXTFIELD_CONTROL = "default";
textRenderer.GridFitType = {};
textRenderer.GridFitType.NONE = "none";
textRenderer.GridFitType.PIXEL = "pixel";
textRenderer.GridFitType.SUBPIXEL = "subpixel";
textRenderer.ColorType = {};
textRenderer.ColorType.DARK = "dark";
textRenderer.ColorType.LIGHT = "light";
textRenderer.FontStyle = {};
textRenderer.FontStyle.NONE = "none";
textRenderer.FontStyle.BOLD = "bold";
textRenderer.FontStyle.ITALIC = "italic";
textRenderer.FontStyle.BOLDITALIC = "bolditalic";
ASSetNative(textRenderer, 2150, "8setAdvancedAntialiasingTable", 1);
ASSetNativeAccessor(textRenderer, 2150, "8antiAliasType,8maxLevel", 2);
var o = new Object();
System.security = o;
ASSetNative(o, 12, "allowDomain,7allowInsecureDomain,loadPolicyFile,chooseLocalSwfPath,escapeDomain");
System.setClipboard = ASnative(1066, 0);
System.IME = {ALPHANUMERIC_FULL: "ALPHANUMERIC_FULL", ALPHANUMERIC_HALF: "ALPHANUMERIC_HALF", CHINESE: "CHINESE", JAPANESE_HIRAGANA: "JAPANESE_HIRAGANA",
    JAPANESE_KATAKANA_FULL: "JAPANESE_KATAKANA_FULL", JAPANESE_KATAKANA_HALF: "JAPANESE_KATAKANA_HALF", KOREAN: "KOREAN", UNKNOWN: "UNKNOWN"};
ASSetNative(System.IME, 13, "8getEnabled,8setEnabled,8getConversionMode,8setConversionMode,8setCompositionString,8doConversion");
AsBroadcaster.initialize(System.IME);
ASSetPropFlags(System.IME, null, 7);
var o = LocalConnection.prototype;
ASSetNative(o, 2200, "6connect,6send,6close,6domain");
ASSetPropFlags(o, null, 3);
var o = ContextMenuItem.prototype;
o.copy = function () {
    var _l2 = new ContextMenuItem();
    _l2.caption = this.caption;
    _l2.onSelect = this.onSelect;
    _l2.separatorBefore = this.separatorBefore;
    _l2.enabled = this.enabled;
    _l2.visible = this.visible;
    return (_l2);
};
ASSetPropFlags(o, null, 1027);
var o = ContextMenu.prototype;
o.copy = function () {
    var _l3 = new ContextMenu();
    _l3.onSelect = this.onSelect;
    _l3.builtInItems = this.builtInItems;
    _l3.customItems = new Array();
    var _l2 = 0;
    while (_l2 < this.customItems.length) {
        _l3.customItems.push(this.customItems[_l2].copy());
        ++_l2;
    }
    return (_l3);
};
o.hideBuiltInItems = function () {
    this.builtInItems = {save: false, zoom: false, quality: false, play: false, loop: false, rewind: false, forward_back: false, print: false};
};
ASSetPropFlags(o, null, 1027);
var o = Error.prototype;
o.name = o.message = "Error";
o.toString = function () {
    return (this.message);
};
AsSetupError("EvalError,ReferenceError,SyntaxError,TypeError,URIError");
MovieClipLoader = ASconstructor(112, 0);
var o = MovieClipLoader.prototype;
ASSetNative(o, 112, "7loadClip,7getProgress,7unloadClip", 100);
AsBroadcaster.initialize(o);
ASSetPropFlags(o, null, 1027);
PrintJob = ASconstructor(111, 0);
var o = PrintJob.prototype;
ASSetNative(o, 111, "7start,7addPage,7send", 100);
ASSetPropFlags(o, null, 1027);
TextSnapshot = ASconstructor(1067, 0);
MovieClip.prototype.getTextSnapshot = function () {
    return (new TextSnapshot(this));
};
ASSetPropFlags(MovieClip.prototype, "getTextSnapshot", 131);
ASSetNative(TextSnapshot.prototype, 1067,
        "6getCount,6setSelected,6getSelected,6getText,6getSelectedText,6hitTestTextNearPos,6findText,6setSelectColor,6getTextRunInfo", 1);
flash.display = {};
flash.display.BitmapData = ASconstructor(1100, 0);
var o = flash.display.BitmapData;
o.Channel = {};
o.Channel.RED = 1;
o.Channel.GREEN = 2;
o.Channel.BLUE = 4;
o.Channel.ALPHA = 8;
ASSetNative(o, 1100, "8loadBitmap", 40);
var o = flash.display.BitmapData.prototype;
ASSetNativeAccessor(o, 1100, "8width,8height,8rectangle,8transparent", 100);
ASSetNative(o, 1100,
        "8getPixel,8setPixel,8fillRect,8copyPixels,8applyFilter,8scroll,8threshold,8draw,8pixelDissolve,8getPixel32,8setPixel32,8floodFill,8getColorBoundsRect,8perlinNoise,8colorTransform,8hitTest,8paletteMap,8merge,8noise,8copyChannel,8clone,8dispose,8generateFilterRect",
        1);
flash.filters = {};
var o = flash.filters.BitmapFilter = ASconstructor(1112, 0);
o.Quality = {};
o.Quality.LOW = 1;
o.Quality.MEDIUM = 2;
o.Quality.HIGH = 3;
o.Type = {};
o.Type.INNER = "inner";
o.Type.OUTER = "outer";
o.Type.FULL = "full";
ASSetNative(o.prototype, 1112, "8clone", 1);
flash.filters.DropShadowFilter = ASconstructor(1101, 0);
flash.filters.DropShadowFilter.prototype = o = new flash.filters.BitmapFilter();
ASSetNativeAccessor(o, 1101, "8distance,8angle,8color,8alpha,8quality,8inner,8knockout,8blurX,8blurY,8strength,8hideObject", 1);
flash.filters.BlurFilter = ASconstructor(1102, 0);
flash.filters.BlurFilter.prototype = o = new flash.filters.BitmapFilter();
ASSetNativeAccessor(o, 1102, "8blurX,8blurY,8quality", 1);
flash.filters.GlowFilter = ASconstructor(1103, 0);
flash.filters.GlowFilter.prototype = o = new flash.filters.BitmapFilter();
ASSetNativeAccessor(o, 1103, "8color,8alpha,8quality,8inner,8knockout,8blurX,8blurY,8strength", 1);
flash.filters.BevelFilter = ASconstructor(1107, 0);
flash.filters.BevelFilter.prototype = o = new flash.filters.BitmapFilter();
ASSetNativeAccessor(o, 1107, "8distance,8angle,8highlightColor,8highlightAlpha,8shadowColor,8shadowAlpha,8quality,8strength,8knockout,8blurX,8blurY,8type",
        1);
flash.filters.GradientGlowFilter = ASconstructor(1108, 0);
flash.filters.GradientGlowFilter.prototype = o = new flash.filters.BitmapFilter();
ASSetNativeAccessor(o, 1108, "8distance,8angle,8colors,8alphas,8ratios,8blurX,8blurY,8quality,8strength,8knockout,8type", 1);
flash.filters.GradientBevelFilter = ASconstructor(1108, 1000);
flash.filters.GradientBevelFilter.prototype = o = new flash.filters.BitmapFilter();
ASSetNativeAccessor(o, 1108, "8distance,8angle,8colors,8alphas,8ratios,8blurX,8blurY,8quality,8strength,8knockout,8type", 1);
flash.filters.ConvolutionFilter = ASconstructor(1109, 0);
flash.filters.ConvolutionFilter.prototype = o = new flash.filters.BitmapFilter();
ASSetNativeAccessor(o, 1109, "8matrixX,8matrixY,8matrix,8divisor,8bias,8preserveAlpha,8clamp,8color,8alpha", 1);
flash.filters.ColorMatrixFilter = ASconstructor(1110, 0);
flash.filters.ColorMatrixFilter.prototype = o = new flash.filters.BitmapFilter();
ASSetNativeAccessor(o, 1110, "8matrix", 1);
var o = flash.filters.DisplacementMapFilter = ASconstructor(1111, 0);
o.Mode = {};
o.Mode.WRAP = "wrap";
o.Mode.CLAMP = "clamp";
o.Mode.IGNORE = "ignore";
o.Mode.COLOR = "color";
flash.filters.DisplacementMapFilter.prototype = o = new flash.filters.BitmapFilter();
ASSetNativeAccessor(o, 1111, "8mapBitmap,8mapPoint,8componentX,8componentY,8scaleX,8scaleY,8mode,8color,8alpha", 1);
flash.geom = {};
flash.geom.Rectangle = function (p1, p2, p3, p4) {
    var _l3 = args.length;
    if (!_l3) {
        this.setEmpty();
    } else {
        this.x = p1;
        this.y = p2;
        this.width = p3;
        this.height = p4;
    } // end if
};
var o = flash.geom.Rectangle.prototype;
o.clone = function () {
    return (new flash.geom.Rectangle(this.x, this.y, this.width, this.height));
};
o.setEmpty = function () {
    this.x = this.y = this.width = this.height = 0;
};
o.isEmpty = function () {
    return (this.width <= 0 || this.height <= 0);
};
o.addProperty("left", function () {
    return (this.x);
}, function (newx) {
    this.width = this.width + (this.x - newx);
    this.x = newx;
});
o.addProperty("right", function () {
    return (this.x + this.width);
}, function (newr) {
    this.width = newr - this.x;
});
o.addProperty("top", function () {
    return (this.y);
}, function (newy) {
    this.height = this.height + (this.y - newy);
    this.y = newy;
});
o.addProperty("bottom", function () {
    return (this.y + this.height);
}, function (newb) {
    this.height = newb - this.y;
});
o.addProperty("topLeft", function () {
    return (new flash.geom.Point(this.x, this.y));
}, function (value) {
    this.width = this.width + (this.x - value.x);
    this.height = this.height + (this.y - value.y);
    this.x = value.x;
    this.y = value.y;
});
o.addProperty("bottomRight", function () {
    return (new flash.geom.Point(this.x + this.width, this.y + this.height));
}, function (value) {
    this.width = value.x - this.x;
    this.height = value.y - this.y;
});
o.addProperty("size", function () {
    return (new flash.geom.Point(this.width, this.height));
}, function (value) {
    this.width = value.x;
    this.height = value.y;
});
o.inflate = function (dx, dy) {
    this.x = this.x - dx;
    this.width = this.width + 2 * dx;
    this.y = this.y - dy;
    this.height = this.height + 2 * dy;
};
o.inflatePoint = function (pt) {
    this.x = this.x - pt.x;
    this.width = this.width + 2 * pt.x;
    this.y = this.y - pt.y;
    this.height = this.height + 2 * pt.y;
};
o.offset = function (dx, dy) {
    this.x = this.x + dx;
    this.y = this.y + dy;
};
o.offsetPoint = function (pt) {
    this.x = this.x + pt.x;
    this.y = this.y + pt.y;
};
o.contains = function (x, y) {
    return (this.x <= x && this.x + this.width > x && this.y <= y && this.y + this.height > y);
};
o.containsPoint = function (pt) {
    return (pt.x >= this.x && pt.x < this.x + this.width && pt.y >= this.y && pt.y < this.y + this.height);
};
o.containsRectangle = function (rect) {
    var _l4 = rect.x + rect.width;
    var _l6 = rect.y + rect.height;
    var _l3 = this.x + this.width;
    var _l5 = this.y + this.height;
    return (rect.x >= this.x && rect.x < _l3 && rect.y >= this.y && rect.y < _l5 && _l4 > this.x && _l4 <= _l3 && _l6 > this.y && _l6 <= _l5);
};
o.intersection = function (toIntersect) {
    var _l2 = new flash.geom.Rectangle();
    if (this.isEmpty() || toIntersect.isEmpty()) {
        _l2.setEmpty();
        return (_l2);
    }
    _l2.x = Math.max(this.x, toIntersect.x);
    _l2.y = Math.max(this.y, toIntersect.y);
    _l2.width = Math.min(this.x + this.width, toIntersect.x + toIntersect.width) - _l2.x;
    _l2.height = Math.min(this.y + this.height, toIntersect.y + toIntersect.height) - _l2.y;
    if (_l2.width <= 0 || _l2.height <= 0) {
        _l2.setEmpty();
    }
    return (_l2);
};
o.intersects = function (toIntersect) {
    return (!this.intersection(toIntersect).isEmpty());
};
o.union = function (toUnion) {
    if (this.isEmpty()) {
        return (toUnion.clone());
    } else if (toUnion.isEmpty()) {
        return (this.clone());
    } else {
        var _l2 = new flash.geom.Rectangle();
        _l2.x = Math.min(this.x, toUnion.x);
        _l2.y = Math.min(this.y, toUnion.y);
        _l2.width = Math.max(this.x + this.width, toUnion.x + toUnion.width) - _l2.x;
        _l2.height = Math.max(this.y + this.height, toUnion.y + toUnion.height) - _l2.y;
        return (_l2);
    }
};
o.equals = function (toCompare) {
    return (toCompare instanceof flash.geom.Rectangle && toCompare.x == this.x && toCompare.y == this.y && toCompare.width == this.width &&
            toCompare.height == this.height);
};
o.toString = function () {
    return ("(x=" + this.x + ", y=" + this.y + ", w=" + this.width + ", h=" + this.height + ")");
};
flash.geom.Point = function (p1, p2) {
    var _l3 = args.length;
    if (!_l3) {
        this.x = this.y = 0;
    } else {
        this.x = p1;
        this.y = p2;
    }
};
var o = flash.geom.Point;
o.distance = function (pt1, pt2) {
    return (pt1.subtract(pt2).length);
};
o.polar = function (len, angle) {
    return (new flash.geom.Point(len * Math.cos(angle), len * Math.sin(angle)));
};
o.interpolate = function (pt1, pt2, f) {
    return (new flash.geom.Point(pt2.x + f * (pt1.x - pt2.x), pt2.y + f * (pt1.y - pt2.y)));
};
var o = flash.geom.Point.prototype;
o.addProperty("length", function () {
    return (Math.sqrt(this.x * this.x + this.y * this.y));
}, function (newlen) {});
o.clone = function () {
    return (new flash.geom.Point(this.x, this.y));
};
o.offset = function (dx, dy) {
    this.x = this.x + dx;
    this.y = this.y + dy;
};
o.equals = function (toCompare) {
    return (toCompare instanceof flash.geom.Point && toCompare.x == this.x && toCompare.y == this.y);
};
o.subtract = function (v) {
    return (new flash.geom.Point(this.x - v.x, this.y - v.y));
};
o.add = function (v) {
    return (new flash.geom.Point(this.x + v.x, this.y + v.y));
};
o.normalize = function (thickness) {
    var _l2 = this.length;
    if (_l2 > 0) {
        _l2 = thickness / _l2;
        this.x = this.x * _l2;
        this.y = this.y * _l2;
    }
};
o.toString = function () {
    return ("(x=" + this.x + ", y=" + this.y + ")");
};
flash.geom.Matrix = function (pa, pb, pc, pd, ptx, pty) {
    var _l3 = args.length;
    if (!_l3) {
        this.identity();
    } else {
        this.a = pa;
        this.b = pb;
        this.c = pc;
        this.d = pd;
        this.tx = ptx;
        this.ty = pty;
    }
};
var o = flash.geom.Matrix.prototype;
o.concat = function (m) {
    var _l4;
    var _l3;
    var _l7;
    var _l5;
    var _l8;
    var _l6;
    result_a = this.a * m.a;
    result_d = this.d * m.d;
    result_b = result_c = 0;
    result_tx = this.tx * m.a + m.tx;
    result_ty = this.ty * m.d + m.ty;
    if (this.b != 0 || this.c != 0 || m.b != 0 || m.c != 0) {
        result_a = result_a + this.b * m.c;
        result_d = result_d + this.c * m.b;
        result_b = result_b + (this.a * m.b + this.b * m.d);
        result_c = result_c + (this.c * m.a + this.d * m.c);
        result_tx = result_tx + this.ty * m.c;
        result_ty = result_ty + this.tx * m.b;
    }
    this.a = result_a;
    this.b = result_b;
    this.c = result_c;
    this.d = result_d;
    this.tx = result_tx;
    this.ty = result_ty;
};
o.invert = function () {
    if (this.b == 0 && this.c == 0) {
        this.a = 1 / this.a;
        this.d = 1 / this.d;
        this.b = this.c = 0;
        this.tx = -this.a * this.tx;
        this.ty = -this.d * this.ty;
    } else {
        var _l6;
        var _l5;
        var _l4;
        var _l3;
        var _l7;
        a0 = this.a;
        a1 = this.b;
        a2 = this.c;
        a3 = this.d;
        det = a0 * a3 - a1 * a2;
        if (det == 0) {
            this.identity();
            return (undefined);
        }
        det = 1 / det;
        this.a = a3 * det;
        this.b = -a1 * det;
        this.c = -a2 * det;
        this.d = a0 * det;
        var _l2 = this.deltaTransformPoint(new flash.geom.Point(this.tx, this.ty));
        this.tx = -_l2.x;
        this.ty = -_l2.y;
    }
};
o.createBox = function (scaleX, scaleY, rotation, x, y) {
    var _l3 = args.length;
    var _l6 = 0;
    if (_l3 > 2) {
        _l6 = rotation;
    }
    var _l5 = 0;
    if (_l3 > 3) {
        _l5 = x;
    }
    var _l4 = 0;
    if (_l3 > 4) {
        _l4 = y;
    }
    this.identity();
    this.rotate(rotation);
    this.scale(scaleX, scaleY);
    this.tx = _l5;
    this.ty = _l4;
};
o.createGradientBox = function (width, height, rotation, x, y) {
    var _l3 = args.length;
    var _l6 = 0;
    if (_l3 > 2) {
        _l6 = rotation;
    }
    var _l5 = 0;
    if (_l3 > 3) {
        _l5 = x;
    }
    var _l4 = 0;
    if (_l3 > 4) {
        _l4 = y;
    }
    this.createBox(width / 1638.400000, height / 1638.400000, _l6, _l5 + width / 2, _l4 + height / 2);
};
o.clone = function () {
    return (new flash.geom.Matrix(this.a, this.b, this.c, this.d, this.tx, this.ty));
};
o.identity = function () {
    this.a = this.d = 1;
    this.b = this.c = 0;
    this.tx = this.ty = 0;
};
o.rotate = function (radians) {
    var _l3 = Math.cos(radians);
    var _l2 = Math.sin(radians);
    var _l4 = new flash.geom.Matrix(_l3, _l2, -_l2, _l3, 0, 0);
    this.concat(_l4);
};
o.translate = function (dx, dy) {
    this.tx = this.tx + dx;
    this.ty = this.ty + dy;
};
o.scale = function (sx, sy) {
    var _l2 = new flash.geom.Matrix(sx, 0, 0, sy, 0, 0);
    this.concat(_l2);
};
o.deltaTransformPoint = function (pt) {
    return (new flash.geom.Point(this.a * pt.x + this.c * pt.y, this.d * pt.y + this.b * pt.x));
};
o.transformPoint = function (pt) {
    return (new flash.geom.Point(this.a * pt.x + this.c * pt.y + this.tx, this.d * pt.y + this.b * pt.x + this.ty));
};
o.toString = function () {
    return ("(a=" + this.a + ", b=" + this.b + ", c=" + this.c + ", d=" + this.d + ", tx=" + this.tx + ", ty=" + this.ty + ")");
};
flash.geom.ColorTransform = ASconstructor(1105, 0);
var o = flash.geom.ColorTransform.prototype;
ASSetNativeAccessor(o, 1105, "8alphaMultiplier,8redMultiplier,8greenMultiplier,8blueMultiplier,8alphaOffset,8redOffset,8greenOffset,8blueOffset,8rgb", 101);
ASSetNative(o, 1105, "8concat", 1);
o.toString = function () {
    return ("(redMultiplier=" + this.redMultiplier + ", greenMultiplier=" + this.greenMultiplier + ", blueMultiplier=" + this.blueMultiplier + ",
    alphaMultiplier=" + this.alphaMultiplier + ", redOffset=" + this.redOffset + ", greenOffset=" + this.greenOffset + ", blueOffset=" + this.blueOffset + ",
            alphaOffset=" + this.alphaOffset + ")");
};
flash.geom.Transform = ASconstructor(1106, 0);
ASSetNativeAccessor(flash.geom.Transform.prototype, 1106, "8matrix,8concatenatedMatrix,8colorTransform,8concatenatedColorTransform,8pixelBounds", 101);
RemoteLSOUsage.getURLPageSupport = function () {
    return (ASnative(2198, 101)());
};
ASSetPropFlags(RemoteLSOUsage, "getURLPageSupport", 1);
flash.net = {};
flash.net.FileReference = function () {
    ASnative(2204, 200)(this);
    this._listeners = [];
};
var o = flash.net.FileReference.prototype;
AsBroadcaster.initialize(o);
ASSetNative(o, 2204, "8browse,8upload,8download,8cancel");
ASSetPropFlags(o, null, 3);
flash.net.FileReferenceList = function () {
    this.fileList = new Array();
    this._listeners = [];
};
var o = flash.net.FileReferenceList.prototype;
AsBroadcaster.initialize(o);
ASSetNative(o, 2205, "8browse");
ASSetPropFlags(o, null, 3);
flash.external = {};
flash.external.ExternalInterface = function () {};
ASSetNative(flash.external.ExternalInterface, 14, "8_initJS,8_objectID,8_addCallback,8_evalJS,8_callOut,8_escapeXML,8_unescapeXML,8_jsQuoteString");
ASSetNativeAccessor(flash.external.ExternalInterface, 14, "8available", 100);
flash.external.ExternalInterface.addCallback = function (functionName, instance, method) {
    if (method && flash.external.ExternalInterface.available) {
        flash.external.ExternalInterface._initJS();
        var _l3 = function (request) {
            return (flash.external.ExternalInterface._callIn(instance, method, request));
        };
        var _l1 = flash.external.ExternalInterface._addCallback(functionName, _l3);
        if (_l1) {
            var _l2 = flash.external.ExternalInterface._objectID();
            if (_l2 != null) {
                flash.external.ExternalInterface._evalJS("__flash__addCallback(" + _l2 + ", \"" + functionName + "\");");
            }
        }
        return (_l1);
    } else {
        return (false);
    }
};
flash.external.ExternalInterface.call = function (functionName) {
    if (flash.external.ExternalInterface.available) {
        flash.external.ExternalInterface._initJS();
        var _l3 = "try { ";
        var _l4 = flash.external.ExternalInterface._objectID();
        if (_l4 != null) {
            _l3 = _l3 + (_l4 + ".SetReturnValue(");
        } // end if
        _l3 = _l3 + ("__flash__toXML(" + functionName + "(");
        var _l2 = 1;
        while (_l2 < args.length) {
            if (_l2 != 1) {
                _l3 = _l3 + ",";
            }
            _l3 = _l3 + flash.external.ExternalInterface._toJS(args[_l2]);
            ++_l2;
        }
        _l3 = _l3 + ")) ";
        if (_l4 != null) {
            _l3 = _l3 + ")";
        }
        _l3 = _l3 + "; } catch (e) { ";
        if (_l4 != null) {
            _l3 = _l3 + (_l4 + ".SetReturnValue(\"<undefined/>\");");
        } else {
            _l3 = _l3 + "\"<undefined/>\";";
        }
        _l3 = _l3 + " }";
        var _l5 = flash.external.ExternalInterface._evalJS(_l3);
        if (_l5 == null) {
            var _l7 = "<invoke name=\"" + functionName + "\" returntype=\"xml\">" + flash.external.ExternalInterface._argumentsToXML(args) + "</invoke>";
            _l5 = flash.external.ExternalInterface._callOut(_l7);
        }
        if (_l5 == null) {
            return (null);
        } else {
            var _l6 = new XML();
            _l6.ignoreWhite = true;
            _l6.parseXML(_l5);
            return (flash.external.ExternalInterface._toAS(_l6.firstChild));
        }
    } else {
        return (null);
    }
};
flash.external.ExternalInterface._callIn = function (instance, method, request) {
    var _l2 = new XML();
    _l2.ignoreWhite = true;
    _l2.parseXML(request);
    var _l3 = null;
    var _l1 = 0;
    while (_l1 < _l2.firstChild.childNodes.length) {
        if (_l2.firstChild.childNodes[_l1].nodeName == "arguments") {
            _l3 = _l2.firstChild.childNodes[_l1];
            break;
        }
        ++_l1;
    }
    var _l4 = method.apply(instance, flash.external.ExternalInterface._argumentsToAS(_l3));
    return (_l2.firstChild.attributes.returntype == "javascript" ? (flash.external.ExternalInterface._toJS(_l4)) :
            (flash.external.ExternalInterface._toXML(_l4)));
};
flash.external.ExternalInterface._arrayToXML = function (obj) {
    var _l3 = "<array>";
    var _l1 = 0;
    while (_l1 < obj.length) {
        _l3 = _l3 + ("<property id=\"" + _l1 + "\">" + flash.external.ExternalInterface._toXML(obj[_l1]) + "</property>");
        ++_l1;
    }
    return (_l3 + "</array>");
};
flash.external.ExternalInterface._argumentsToXML = function (obj) {
    var _l3 = "<arguments>";
    var _l1 = 1;
    while (_l1 < obj.length) {
        _l3 = _l3 + flash.external.ExternalInterface._toXML(obj[_l1]);
        ++_l1;
    }
    return (_l3 + "</arguments>");
};
flash.external.ExternalInterface._objectToXML = function (obj) {
    var _l2 = "<object>";
    for (var _l3 in obj) {
        _l2 = _l2 + ("<property id=\"" + _l3 + "\">" + flash.external.ExternalInterface._toXML(obj[_l3]) + "</property>");
    }
    return (_l2 + "</object>");
};
flash.external.ExternalInterface._toXML = function (value) {
    var _l2 = typeof(value);
    if (_l2 == "string") {
        return ("<string>" + flash.external.ExternalInterface._escapeXML(value) + "</string>");
    } else if (_l2 == "undefined") {
        return ("<undefined/>");
    } else if (_l2 == "number") {
        return ("<number>" + value + "</number>");
    } else if (value == null) {
        return ("<null/>");
    } else if (_l2 == "boolean") {
        return (value ? ("<true/>") : ("<false/>"));
    } else if (value.hasOwnProperty("length")) {
        return (flash.external.ExternalInterface._arrayToXML(value));
    } else if (_l2 == "object") {
        return (flash.external.ExternalInterface._objectToXML(value));
    } else {
        return ("<null/>");
    }
};
flash.external.ExternalInterface._objectToAS = function (obj) {
    var _l3 = {};
    var _l1 = 0;
    while (_l1 < obj.childNodes.length) {
        if (obj.childNodes[_l1].nodeName == "property") {
            _l3[obj.childNodes[_l1].attributes.id] = flash.external.ExternalInterface._toAS(obj.childNodes[_l1].firstChild);
        }
        ++_l1;
    }
    return (_l3);
};
flash.external.ExternalInterface._arrayToAS = function (obj) {
    var _l3 = [];
    var _l1 = 0;
    while (_l1 < obj.childNodes.length) {
        _l3[obj.childNodes[_l1].attributes.id] = flash.external.ExternalInterface._toAS(obj.childNodes[_l1].firstChild);
        ++_l1;
    }
    return (_l3);
};
flash.external.ExternalInterface._toAS = function (obj) {
    var type = obj.nodeName;
    if (type == "number") {
        return (Number(obj.firstChild.toString()));
    } else if (type == "string") {
        return (flash.external.ExternalInterface._unescapeXML(String(obj.firstChild)));
    } else if (type == "false") {
        return (false);
    } else if (type == "true") {
        return (true);
    } else if (type == "null") {
        return (null);
    } else if (type == "undefined") {
        return (undefined);
    } else if (type == "object") {
        return (flash.external.ExternalInterface._objectToAS(obj));
    } else if (type == "array") {
        return (flash.external.ExternalInterface._arrayToAS(obj));
    } else if (type == "class") {
        return (String(obj.firstChild));
    } else {
        return (undefined);
    }
};
flash.external.ExternalInterface._argumentsToAS = function (obj) {
    var _l3 = [];
    var _l1 = 0;
    while (_l1 < obj.childNodes.length) {
        _l3.push(flash.external.ExternalInterface._toAS(obj.childNodes[_l1]));
        ++_l1;
    }
    return (_l3);
};
flash.external.ExternalInterface._arrayToJS = function (value) {
    var _l2 = "[";
    var _l1 = 0;
    while (_l1 < value.length) {
        if (_l1 != 0) {
            _l2 = _l2 + ",";
        }
        _l2 = _l2 + flash.external.ExternalInterface._toJS(value[_l1]);
        ++_l1;
    }
    return (_l2 + "]");
};
flash.external.ExternalInterface._objectToJS = function (value) {
    var _l1 = "({";
    var _l2 = true;
    for (var _l4 in value) {
        if (!_l2) {
            _l1 = _l1 + ",";
        }
        _l2 = false;
        _l1 = _l1 + (_l4 + ":" + flash.external.ExternalInterface._toJS(value[_l4]));
    }
    return (_l1 + "})");
};
flash.external.ExternalInterface._toJS = function (value) {
    if (typeof(value) == "string") {
        return ("\"" + flash.external.ExternalInterface._jsQuoteString(flash.external.ExternalInterface._unescapeXML(value)) + "\"");
    } else if (typeof(value) == "object") {
        if (value instanceof Array) {
            return (flash.external.ExternalInterface._arrayToJS(value));
        } else {
            return (flash.external.ExternalInterface._objectToJS(value));
        }
    } else {
        return (String(value));
    }
};
ASSetPropFlags(flash.external.ExternalInterface, null, 4103);
var o = null;