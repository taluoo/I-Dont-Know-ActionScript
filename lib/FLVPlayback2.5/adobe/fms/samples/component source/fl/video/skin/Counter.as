package fl.video.skin {

	import flash.display.Sprite;
	import flash.text.TextField;
	import fl.video.*;

	dynamic public class Counter extends Sprite {

		use namespace flvplayback_internal;

		public var time_txt:TextField;
		public var totalTimes:Array;

		private var _uiMgr:UIManager;

		public function Counter() {
			totalTimes = new Array();
		}

		public function get uiMgr():UIManager {
			return _uiMgr;
		}

		public function set uiMgr(value:UIManager):void {
			if (_uiMgr != null && _uiMgr._vc != null) {
				_uiMgr._vc.removeEventListener(VideoEvent.PLAYHEAD_UPDATE, handlePlayheadUpdate);
				_uiMgr._vc.removeEventListener(VideoEvent.READY, handleReady);
			}
			_uiMgr = value;
			if (_uiMgr != null && _uiMgr._vc != null) {
				_uiMgr._vc.addEventListener(VideoEvent.PLAYHEAD_UPDATE, handlePlayheadUpdate);
				_uiMgr._vc.addEventListener(VideoEvent.READY, handleReady);
			}
		}

		private function handlePlayheadUpdate(e:VideoEvent):void {
			if (e.vp != _uiMgr._vc.visibleVideoPlayerIndex) return;

			var newLabel:String = "";
			var currentTimeMin:int = e.playheadTime / 60;
			var currentTimeSec:int = e.playheadTime % 60;
			if (currentTimeMin < 10) newLabel += "0";
			newLabel += currentTimeMin; 
			newLabel += ":";
			if (currentTimeSec < 10) newLabel += "0";
			newLabel += currentTimeSec;
			if (totalTimes[e.vp] != null) {
				newLabel += totalTimes[e.vp];
			}
			time_txt.text = newLabel;
		}

		private function handleReady(e:VideoEvent):void {
			var totalTime:Number = _uiMgr._vc.getVideoPlayer(e.vp).totalTime;
			if (isNaN(totalTime)) {
				totalTimes[e.vp] = null;
			}
			var newLabel:String = "/";
			var totalTimeMin:int = totalTime / 60;
			var totalTimeSec:int = totalTime % 60;
			if (totalTimeMin < 10) newLabel += "0";
			newLabel += totalTimeMin; 
			newLabel += ":";
			if (totalTimeSec < 10) newLabel += "0";
			newLabel += totalTimeSec;
			totalTimes[e.vp] = newLabel;
		}

	}

}
