package;

import flixel.FlxGame;
import openfl.display.Sprite;
import states.IntroState;

class Main extends Sprite
{
	public function new()
	{
		super();
		addChild(new FlxGame(0, 0, IntroState));
	}
}
