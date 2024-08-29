package models;

import flixel.FlxSprite;

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

	public function new(object)
	{
		this.name = object.name;
		this.description = object.description;
	}
}