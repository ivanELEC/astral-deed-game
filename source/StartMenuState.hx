package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.addons.ui.FlxButtonPlus;
import flixel.sound.FlxSound;
import flixel.util.FlxColor;

class StartMenuState extends FlxState
{
	var menuSound:FlxSound;
	var deckButton:FlxButtonPlus;
	var playButton:FlxButtonPlus;

	override public function create()
	{
		super.create();
		
		// setup assets
		var menuBg = new FlxSprite();
		menuBg.loadGraphic(AssetPaths.purpleNebula06__png, false, FlxG.height, FlxG.width); 
		menuSound = FlxG.sound.load(AssetPaths.menuEophona__mp3);
		menuSound.looped = true;
		deckButton = new FlxButtonPlus(0, 0, () -> clickDeck, "View Deck");
		deckButton.screenCenter();
		// flash screen
		FlxG.camera.flash(FlxColor.WHITE, 0.33);
		// load assets
		add(menuBg);
		add(deckButton);
	}

	override public function update(elapsed:Float)
	{	
		if(!menuSound.playing){
			menuSound.play();
		}
				
		super.update(elapsed);
	}
	function clickDeck()
	{
		FlxG.switchState(new ViewDeckState());
	}
}
