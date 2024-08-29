package states;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.addons.ui.FlxButtonPlus;
import flixel.sound.FlxSound;
import flixel.util.FlxColor;
import objects.ui.MenuButton;

class StartMenuState extends FlxState
{
	var menuBg:FlxSprite;
	var menuSound:FlxSound;
	var deckButton:FlxButtonPlus;
	var playButton:FlxButtonPlus;

	override public function create()
	{
		super.create();
		// flash screen
		FlxG.camera.flash(FlxColor.WHITE, 0.33);
		setupMenuAssets();
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

	function setupMenuAssets()
	{
		// background
		menuBg = new FlxSprite();
		menuBg.loadGraphic(AssetPaths.purpleNebula06__png, false, FlxG.height, FlxG.width);

		// audio
		menuSound = FlxG.sound.load(AssetPaths.menuEophona__mp3);
		menuSound.looped = true;
		menuSound.persist = true;

		// buttons
		deckButton = new MenuButton(0, 0, clickDeck, "View Deck");
		playButton = new MenuButton(0, 0, clickDeck, "Play Game");
		deckButton.screenCenter();
		playButton.screenCenter();
		playButton.y = deckButton.y + 50;

		// load assets
		add(menuBg);
		add(deckButton);
		add(playButton);
	}
}
