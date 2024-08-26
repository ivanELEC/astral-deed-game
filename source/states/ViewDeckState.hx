package states;

import flixel.FlxG;
import flixel.FlxState;
import flixel.sound.FlxSound;
import flixel.util.FlxColor;
import tjson.TJSON;


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
	function loadCards()
	{
		var cardJson = TJSON.parse(AssetPaths.cards__json);
		js.html.Console.log(cardJson.cards);
	}
}
