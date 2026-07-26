package shiftanimate.interfaces;

import openfl.display.BitmapData;
import openfl.geom.Rectangle;
import flixel.graphics.frames.FlxFrame;
import flixel.math.FlxMatrix;
import flixel.FlxCamera;

interface IFilterable
{
	@:allow(shiftanimate.FlxAnimate)
	private var _filterCamera:FlxCamera;
	@:allow(shiftanimate.FlxAnimate)
	@:allow(shiftanimate.filters.FlxAnimateFilterRenderer)
	private var _filterFrame:FlxFrame;
	@:allow(shiftanimate.FlxAnimate)
	@:allow(shiftanimate.filters.FlxAnimateFilterRenderer)
	private var _bmp1:BitmapData;
	@:allow(shiftanimate.FlxAnimate)
	@:allow(shiftanimate.filters.FlxAnimateFilterRenderer)
	private var _bmp2:BitmapData;
	@:allow(shiftanimate.FlxAnimate)
	private var _filterMatrix:FlxMatrix;

	@:allow(shiftanimate.FlxAnimate)
	private function updateBitmaps(rect:Rectangle):Void;
}
