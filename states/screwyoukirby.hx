//Please don't kill yourself, Kirby. (8:59PM EST)
//I'm availible for talking, if you need someone to talk to. (9:51 PM)
//wrote this too late but i feel acomplished (Nov 13th, 4:10/4:11 AM, written after the others)

package;

import flixel.FlxG;
import flixel.FlxState;
import flixel.ui.FlxButton;
import flixel.util.FlxColor;

//import("MainMenuState");
//optional lol
var curtains:FlxSprite;
var bg:FlxSprite;
var gf:FlxSprite;

//now can i be in the server? (written before 8:59PM)
function create(){
    bg = new FlxSprite(0, 0).loadGraphic(Paths.image('titlescreen/stageback'));
    bg.screenCenter();
    add(bg);

    curtains = new FlxSprite(0, 0).loadGraphic(Paths.image('titlescreen/stagecurtains'));
    curtains.screenCenter();
    curtains.scale.x = 0.5;
    curtains.scale.y = 0.5;
    curtains.y -= 20;
    add(curtains);

    gf = new FlxSprite(500, 0).loadGraphic(Paths.image('misc/Ivn'));
	 gf.screenCenter();
	 gf.scale.x = 0.5;
    gf.scale.y = 0.5;
    gf.antialiasing = true;
    add(gf);
	 
function update(elapsed:Float){
    if (FlxG.keys.justPressed.ESC) {
       FlxG.switchState(new MainMenuState()); 
    }
//doesnt work
}
FlxTween.angle(gf, 90, -100, 23.0, { ease: easeFunction, onStart: onStart, onUpdate: onUpdate, onComplete: onComplete, type: ONESHOT });
//}
//https://github.com/YoshiCrafter29/YoshiCrafterEngine/blob/ab0c50c0e82e04da545f216c725fc51021dff501/mods/YoshiCrafterEngine/states/dvd.hx
//reference for going back


super.create();

		var button = new FlxButton(0, -100, "Return To Main Menu", onButtonClicked);
		button.screenCenter();
		button.scale.x = 3;
      button.scale.y = 3;
		add(button);
	}

	function onButtonClicked()
	{
		FlxG.camera.flash(FlxColor.WHITE, 0.33);
		FlxG.switchState(new MainMenuState()); 
	}
