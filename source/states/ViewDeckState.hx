package states;

import flixel.FlxG;
import flixel.FlxState;
import flixel.util.FlxColor;
import models.CardModel;
import openfl.Assets;
import openfl.utils.Object;
import tjson.TJSON;

class ViewDeckState extends FlxState
{
	var cardArray:Array<Object>;
	var cardJson:Object;

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
		cardJson = TJSON.parse(Assets.getText(AssetPaths.cards__json));
		cardArray = cardJson.cards;
		for (card in cardArray)
		{
			var cardInstance = new CardModel(card);
			trace(cardInstance);
		}
	}
}
