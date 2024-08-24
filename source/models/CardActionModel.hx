package models;

class CardActionModel
{
	var description:String;
	var pointReduce:Int;
	var pointAdd:Int;
	var pointMultiply:Int = 1;
	var pointDivide:Int = 1;

	public function new(description, pointReduce, pointAdd)
	{
		this.description = description;
		this.pointReduce = pointReduce;
		this.pointAdd = pointAdd;
	}
}