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

function create(){
    bg = new FlxSprite(0, 0).loadGraphic(Paths.image('titlescreen/stageback'));
    bg.screenCenter();
 //   add(bg);

    curtains = new FlxSprite(0, 0).loadGraphic(Paths.image('titlescreen/stagecurtains'));
    curtains.screenCenter();
    curtains.scale.x = 0.5;
    curtains.scale.y = 0.5;
    curtains.y -= 20;
 //   add(curtains);

    gf = new FlxSprite(500, 0).loadGraphic(Paths.image('misc/Ivn'));
	 gf.screenCenter();
	 gf.scale.x = 0.5;
    gf.scale.y = 0.5;
    gf.antialiasing = true;
    add(gf);

super.create();

		var button = new FlxButton(0, -100, "Return To Main Menu", onButtonClicked);
		button.screenCenter();
		button.scale.x = 3;
      button.scale.y = 3;
		add(button);
		
		var text = new FlxText(300, 150);
		//text control, first parameter is the name of the sprite, second is the type, which is text, third is the actual text text
		text.text = "Hello, World! This mod isn't quite complete, but it will be soon!";
//		text.color = FlxColor.CYAN;
		text.size = 32;
//		text.setBorderStyle(FlxTextBorderStyle.SHADOW, FlxColor.BLUE, 4);
		text.screenCenter();
		text.setFormat(Paths.font("FOT-RodinBokutohPro-M.ttf"), 70, FlxColor.WHITE);
		text.wordWrap = true;
		add(text);

	}

	   if (FlxG.keys.justPressed.ENTER)
   {
      FlxG.switchState(new MainMenuState());
   }
	//above code doesn't do JACK
	//bro its 12 am already? i was supposed to get this out by yesterday!
	
	function onButtonClicked()
	{
		FlxG.camera.flash(FlxColor.WHITE, 0.33);
		FlxG.switchState(new MainMenuState()); 
	}




//breh i wanna lay down on some kirboobies
//...mmmmmm
//or eat some kirbus- bro did i hire a horny coder?