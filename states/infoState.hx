var logoBl:FlxSprite = null;
//original code taken from the fun sized ceo mod, heheheheheheheheheheheheehheheheehehehheeheh
function create() {
    logoBl = new FlxSprite(0, 0);
    logoBl.screenCenter();
    logoBl.frames = Paths.getSparrowAtlas('titlescreen/logobumpin');
    logoBl.antialiasing = true;
    logoBl.animation.addByPrefix('bump', 'logo bumpin', 24);
    logoBl.animation.play('bump');
    logoBl.updateHitbox();
    logoBl.x -= 700;
    logoBl.y -= 375;

    bg = new FlxSprite(0, 0).loadGraphic(Paths.image('Space'));
    bg.updateHitbox();
    bg.screenCenter();
    
    add(bg);
    add(logoBl);
	 
	         if (FlxG.keys.justPressed.ENTER)
        {
           FlxG.switchState(new MainMenuState("MainMenuState());
        }
    }
}