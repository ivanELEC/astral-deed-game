package models;

class CardRangeMapModel
{
	var left:Int;
	var right:Int;
	var up:Int;
	var down:Int;

	public function new(left, right, up, down)
	{
		this.left = left;
		this.right = right;
		this.up = up;
		this.down = down;
	}
}