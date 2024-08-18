package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.sound.FlxSound;
import flixel.system.FlxAssets;
import flixel.text.FlxText;
import flixel.util.FlxColor;
import flixel.util.FlxTimer;

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
