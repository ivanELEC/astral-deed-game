package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.sound.FlxSound;
import flixel.util.FlxColor;

class ViewDeckState extends FlxState
{
	var menuSound:FlxSound;

	override public function create()
	{
		super.create();
		
		FlxG.camera.flash(FlxColor.WHITE, 0.33);
	}

	override public function update(elapsed:Float)
	{	
				
		super.update(elapsed);
	}
}
