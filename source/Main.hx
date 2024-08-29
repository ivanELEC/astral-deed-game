package;

import flixel.FlxG;
import flixel.FlxGame;
import openfl.display.Sprite;
import states.IntroState;

class Main extends Sprite
{
	public function new()
	{
		super();
		FlxG.log.redirectTraces = true; // trace outputs to debugger
		addChild(new FlxGame(0, 0, IntroState));
	}
}
