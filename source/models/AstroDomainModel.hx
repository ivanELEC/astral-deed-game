package models;

import flixel.FlxSprite;

class AstroDomainModel
{
	var name:String;
	var description:String;
	var icon:FlxSprite;

	public function new(name, description, icon)
	{
		this.name = name;
		this.description = description;
		this.icon = icon;
	}
}