package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.sound.FlxSound;
import flixel.system.FlxAssets;
import flixel.text.FlxText;
import flixel.util.FlxColor;
import flixel.util.FlxTimer;

class PlayState extends FlxState
{
	var introTextAlpha:Float = 0;
	var introText:FlxText;
	var startText:FlxText;
	var introSound:FlxSound;
	var introFinished:Bool = false;

	override public function create()
	{
		super.create();
		//global defaults
		FlxAssets.FONT_DEFAULT = AssetPaths.poppinsMedium__ttf;
		FlxG.mouse.load(AssetPaths.cursorPointer6__png);
		
		//intro assets setup
		introText = new flixel.text.FlxText(0, 0, 0, "TODO Games", 64);
		introText.setBorderStyle(FlxTextBorderStyle.SHADOW, FlxColor.PINK, 4);
		introText.screenCenter();
		add(introText);
		
		introSound = FlxG.sound.load(AssetPaths.introTouchAbsence__mp3);
		introSound.looped = true;
		
		startText = new flixel.text.FlxText(0, 0, 0, "Click or Press Enter To Start", 10);
		startText.screenCenter();
		startText.y += 50;
	}

	override public function update(elapsed:Float)
	{
		
		loadIntro();

		if(introFinished){
			if(FlxG.mouse.justReleased || FlxG.keys.pressed.ENTER){
				unloadIntro();
				FlxG.switchState(new StartMenuState());
			}
		}

		super.update(elapsed);
	}

	function loadIntro()
	{
		if(introTextAlpha <= 1){
			introTextAlpha += 0.02;
		}

		introText.alpha = introTextAlpha;
		var timer = new FlxTimer();
		timer.start(5.0, introPhaseOne, 0);
	}

	function introPhaseOne(_):Void{
		introText.text = "Astral Deed";
		introText.setBorderStyle(FlxTextBorderStyle.SHADOW, FlxColor.BLUE, 3);
		introText.font = AssetPaths.jaquard12ChartedRegular__ttf;
		introText.screenCenter();
		add(startText);
		if(!introSound.playing && !introFinished){
			introSound.play();
		}
		introFinished = true;
	}

	function unloadIntro()
	{
		introText.visible = false;
		startText.visible = false;
		introSound.stop();
	}
}

class StartMenuState extends FlxState
{
	var menuSound:FlxSound;

	override public function create()
	{
		super.create();
		
		//menu assets setup
		menuSound = FlxG.sound.load(AssetPaths.menuEophona__mp3);
		menuSound.looped = true;
		FlxG.camera.flash(FlxColor.WHITE, 0.33);
		var menuBg = new FlxSprite();
		menuBg.loadGraphic(AssetPaths.menuBgSpritesheet__png, true, FlxG.height, FlxG.width); 
		var menuBgFrames = [for (i in 0...61) i];
		menuBg.resetSizeFromFrame();
		menuBg.animation.add("backgroundAnimation", menuBgFrames);
		menuBg.animation.play("backgroundAnimation");
		add(menuBg);
	}

	override public function update(elapsed:Float)
	{	
		if(!menuSound.playing){
			menuSound.play();
		}
				
		super.update(elapsed);
	}
}
