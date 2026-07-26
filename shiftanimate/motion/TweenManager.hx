package shiftanimate.motion;

import shiftanimate.animate.FlxKeyFrame;
import shiftanimate.motion.easing.BezierEase;

class TweenManager
{
	@:allow(shiftanimate.animate.FlxKeyFrame)
	var _parent:FlxKeyFrame = null;

	public var curEase:BezierEase;

	public function new()
	{
		curEase = BezierEase.LINEAR;
	}

	public function compute(curFrame:Int, ?ease:String = ""):Float
	{
		if (_parent == null || _parent.duration == 1)
			return 0;

		var p = (curFrame - _parent.index) / _parent.duration;

		return curEase.compute(p);
	}
}
