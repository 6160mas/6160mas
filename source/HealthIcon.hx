package;

import flixel.FlxSprite;

class HealthIcon extends FlxSprite
{
	/**
	 * Used for FreeplayState! If you use it elsewhere, prob gonna annoying
	 */
	public var sprTracker:FlxSprite;

	public function new(char:String = 'bf', isPlayer:Bool = false)
	{
		super();
		
		loadGraphic(Paths.image('iconGrid'), true, 150, 150);

		antialiasing = true;
		animation.add('gf', [16], 0, false, isPlayer);
		animation.add('matt', [24, 25], 0, false, isPlayer);
		animation.add('mattmad', [24, 25], 0, false, isPlayer);
		animation.add('mattold', [28, 29], 0, false, isPlayer);
		animation.add('mattbox', [26, 27], 0, false, isPlayer);
		animation.add('mattchill', [24, 25], 0, false, isPlayer);
        animation.add('matttko', [26, 27], 0, false, isPlayer);
		animation.add('bfmii', [0, 1], 0, false, isPlayer);
		animation.play(char);
		scrollFactor.set();
	}

	override function update(elapsed:Float)
	{
		super.update(elapsed);

		if (sprTracker != null)
			setPosition(sprTracker.x + sprTracker.width + 10, sprTracker.y - 30);
	}
}
