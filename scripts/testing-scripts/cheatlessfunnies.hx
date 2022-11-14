 {
        if (FlxG.keys.justPressed8)
        {
            transitioning = true;
            FlxG.sound.music.stop();

            new FlxTimer().start(2, function(tmr:FlxTimer)
            {
                FlxG.switchState(new infoState());
            });
				FlxG.switchState(new ModState("infoState", mod));
        }
    }