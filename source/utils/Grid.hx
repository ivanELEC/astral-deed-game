package utils;

class GridIterator
{
	var gridWidth:Int = 0;
	var gridHeight:Int = 0;
	var i:Int = -1;

	public inline function new(gridWidth:Int, gridHeight:Int)
	{
		this.gridWidth = gridWidth;
		this.gridHeight = gridHeight;
	}

	public inline function hasNext()
	{
		return i < gridWidth * gridHeight;
	}

	public inline function next()
	{
		i++;
		return {key: i, value: {x: i % gridWidth, y: Std.int(i / gridWidth)}}
	}
}