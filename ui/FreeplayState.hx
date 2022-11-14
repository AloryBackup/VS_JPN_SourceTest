import("LoadingState");

var char:Int = 0;
var amogus = 'false';
var sus = 'false';
var kirbychrome = 'false';
function update(elapsed:Float) {
    var controls = FlxControls.justPressed;
    var pressed = false;
//controls if first key has been pressed
    if (pressed = controls.T)  {
        if (amogus == 'true') {
            amogus = 'false';
        }
        if (amogus == 'false') {
            amogus = 'true';
        }
    }

    if (pressed = controls.U)  {
        if (sus == 'true') {
            sus = 'false';
        }
        if (sus == 'false') {
            sus = 'true';
        }
    }
	 
    if (pressed = controls.D)  {
        if (kirbychrome == 'true') {
            kirbychrome = 'false';
        }
        if (kirbychrome == 'false') {
            kirbychrome = 'true';
        }
    }

//checks to see which one
    if (amogus == 'true') {
        if (char == 0) pressed = controls.T;
        if (char == 1) pressed = controls.E;
        if (char == 2) pressed = controls.S;
        if (char == 3) pressed = controls.T;
        if (pressed) {
            char++;
        } else {
            if (controls.ANY) {
                char = 0;
            }
        }
        if (char >= 6) {
		  //loads test on Normal mode.
            CoolUtil.loadSong("VS July_Plus_Nick_Source", "Test", "Normal");
            LoadingState.loadAndSwitchState(new PlayState_());
        }   
    }

    if (sus == 'true') {
        if (char == 0) pressed = controls.U;
        if (char == 1) pressed = controls.H;
        if (char == 2) pressed = controls.O;
        if (char == 3) pressed = controls.H;
        if (pressed) {
            char++;
        } else {
            if (controls.ANY) {
                char = 0;
            }
        }
        if (char >= 4) {
            CoolUtil.loadSong("VS_July_Plus_Nick_Source", "nick-a-pocalypse", "Normal");
            LoadingState.loadAndSwitchState(new PlayState_());
        }
    }   
    if (kirbychrome == 'true') {
        if (char == 0) pressed = controls.D;
        if (char == 1) pressed = controls.E;
        if (char == 2) pressed = controls.D;
        if (pressed) {
            char++;
        } else {
            if (controls.ANY) {
                char = 0;
            }
        }
            if (char >= 3) {
            CoolUtil.loadSong("VS_July_Plus_Nick_Source", "Isotope", "Hard");
            LoadingState.loadAndSwitchState(new PlayState_());
    }
    }   
}
