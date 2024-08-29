package states;

import flixel.FlxG;
import flixel.FlxState;
import flixel.addons.ui.FlxClickArea;
import flixel.text.FlxText;
import flixel.util.FlxColor;
import models.CardModel;
import openfl.Assets;
import openfl.utils.Object;
import tjson.TJSON;
import utils.Grid.GridIterator;

class ViewDeckState extends FlxState
{
	var cardJsonArray:Array<Object>;
	var cardInstanceArray:Array<CardModel> = [];	
	var cardJson:Object;
	var cardPage:Int = 0;
	var cardInfoText:FlxText;

	override public function create()
	{
		super.create();
		
		FlxG.camera.flash(FlxColor.WHITE, 0.33);
		loadCards();
		loadInfoBox();
	}

	override public function update(elapsed:Float)
	{	

		super.update(elapsed);
	}

	function loadCards()
	{
		// generate array of cards from JSON
		cardJson = TJSON.parse(Assets.getText(AssetPaths.cards__json));
		cardJsonArray = cardJson.cards;
		for (card in cardJsonArray)
		{
			var cardInstance = new CardModel(card);
			cardInstanceArray.push(cardInstance);
		}
		// align card sprites into a grid
		var gridWidth = 3;
		var gridHeight = 1;

		for (idx => pos in new GridIterator(gridWidth, gridHeight))
		{
			if ((idx <= cardInstanceArray.length - 1) && (idx >= cardPage * gridWidth) && (idx < (cardPage * gridWidth) + 3))
			{
				var card = cardInstanceArray[idx];
				// set card position
				card.sprite.x = (pos.x * 200) + 30;
				card.sprite.y = (pos.y * 300) + 50;
				// add card sprite to page
				add(cardInstanceArray[idx].sprite);
				// add clickable button for card sprite
				var buttonArea = new FlxClickArea(card.sprite.x, card.sprite.y);
				buttonArea.width = card.sprite.width;
				buttonArea.height = card.sprite.height;
				buttonArea.onUp = () -> updateInfoBox(card.infoBoxText());
				add(buttonArea);
			}
		}
	}

	function loadInfoBox()
	{
		cardInfoText = new FlxText(30, 360);
		cardInfoText.text = "";
		cardInfoText.size = 15;
		add(cardInfoText);
	}
	function updateInfoBox(text:String)
	{
		cardInfoText.text = text;
	}
}
