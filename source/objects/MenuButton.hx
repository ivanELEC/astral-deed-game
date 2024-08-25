package objects;

import flixel.FlxSprite;
import flixel.addons.ui.FlxButtonPlus;

class MenuButton extends FlxButtonPlus
{
	public function new(X:Float = 0, Y:Float = 0, Callback:Dynamic, ?Label:String, Width:Int = 100, Height:Int = 20)
	{	
		var buttonNormalSprite = new FlxSprite(0, 0, AssetPaths.buttonDefault__png);
		var buttonHighlightSprite = new FlxSprite(0, 0, AssetPaths.buttonHover__png);
		super(X, Y, () -> Callback, Label, Width, Height);

		this.loadButtonGraphic(buttonNormalSprite, buttonHighlightSprite);
		this.textNormal.size = 12;
		this.textHighlight.size = 12;
		this.textNormal.y = 10;
		this.textHighlight.y = 10;
		this.textNormal.font = AssetPaths.ptSansRegular__ttf;
		this.textHighlight.font = AssetPaths.ptSansRegular__ttf;
	}
}