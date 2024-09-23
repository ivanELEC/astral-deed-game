package models;

import flixel.FlxSprite;
import flixel.addons.ui.FlxClickArea;

@:build(tostring.ToString.generate())
class CardModel
{
	public var name:String;
	public var description:String;
	@:tostring.exclude public var astroDomain:AstroDomainModel;
	@:tostring.exclude public var sprite:FlxSprite;
	@:tostring.exclude public var effectiveRangeMap:Array<PositionOffset>;
	@:tostring.exclude public var friendlyAction:CardActionModel;
	@:tostring.exclude public var opponentAction:CardActionModel;
	@:tostring.exclude public var clickableArea:FlxClickArea;

	public function new(object)
	{
		this.name = object.name;
		this.description = object.description;
		this.sprite = new FlxSprite();
		this.sprite.loadGraphic('assets/images/cardSprites/${object.spritePath}');
		this.clickableArea = new FlxClickArea(this.sprite.x, this.sprite.y);
		this.clickableArea.width = this.sprite.width;
		this.clickableArea.height = this.sprite.height;
	}

	public function setOnClick(func)
	{
		this.clickableArea.onUp = func;
	}

	public function updatePosition(x, y)
	{
		this.sprite.x = x;
		this.sprite.y = y;
		this.clickableArea.x = x;
		this.clickableArea.y = y;
	}

	public function updateSize(width, height)
	{
		this.sprite.width = width;
		this.sprite.height = height;
		this.clickableArea.width = width;
		this.clickableArea.height = height;
	}

	public function infoBoxText()
	{
		return 'Card: ${this.name}\nInfo: ${this.description}';
	}
}