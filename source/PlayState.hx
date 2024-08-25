package;

import flixel.FlxState;

class PlayState extends FlxState
{
	var sipapi:Int = 0;
	var imagen:FlxSprite;

	override public function create()
	{
		imagen = new FlxSprite();
		add(imagen);
		super.create();
	}

	override public function update(elapsed:Float)
	{
		switch (sipapi)
		{
			case 0:
				imagen.loadGraphic(Paths.image('pene'));
			case 1:
				imagen.loadGraphic(Paths.image('gghuevos'));
			case 2:
				imagen.loadGraphic(Paths.image('sisisi'));
			case 3:
				imagen.loadGraphic(Paths.image('vvlad'));
		}
		if (FlxG.keys.justPressed.LEFT)
		{
			sipapi -= 1;
		}
		else if (FlxG.keys.justPressed.RIGHT)
		{
			sipapi += 1;
		}
		super.update(elapsed);
	}
}
