package states;

import flixel.FlxG;
import flixel.FlxState;
import flixel.sound.FlxSound;
import flixel.util.FlxColor;
import models.CardModel;
import openfl.Assets;
import tjson.TJSON;


class ViewDeckState extends FlxState
{
	var cardArray:Array<CardModel>;

	override public function create()
	{
		super.create();
		
		FlxG.camera.flash(FlxColor.WHITE, 0.33);
		loadCards();
	}

	override public function update(elapsed:Float)
	{	
				
		super.update(elapsed);
	}
	function loadCards()
	{
		var cardJson = TJSON.parse(Assets.getText(AssetPaths.cards__json));
		var cardArray =    
		js.html.Console.log(cardJson.cards);
	}
}
