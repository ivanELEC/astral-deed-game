package models;

import flixel.FlxSprite;

class CardModel
{
	var name:String;
	var description:String;
	var astroDomain:AstroDomainModel;
	var sprite:FlxSprite;
	var effectiveRangeMap:Array<PositionOffset>;
	var friendlyAction:CardActionModel;
	var opponentAction:CardActionModel;

	public function new(name, description, sprite)
	{
		this.name = name;
		this.description = description;
		this.sprite = sprite;
	}
}