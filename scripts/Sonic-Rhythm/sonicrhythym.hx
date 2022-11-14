
for (r in ratings) {
    r.color = "#31B0D1";
}

function createPost() {
    for (t in PlayState.members) {
        if (Std.is(t, FlxText)) {
            t.setFormat(Paths.font('sonic.ttf'), t.size, 0xFFD8558E, t.alignment, t.borderStyle, t.borderColor);
        }
    }
    if (PlayState.timerBar != null) PlayState.timerBar.createFilledBar(0xFF000000, 0xFF00FF00);
	 //First color is the dark color the second color, in AARGB format, if you don't know what that is, just put FF before an RBG value.
	 //The first FF controls the transparency, so 00FFFFFF would be a fully transparent white. It controls the same as the normal RGB values, so incase you wanted it to be half transparent or fully visible, then you can do that. 
	 //If you still don't get it, 
	 //FF = Full 00 = Empty
	 //So if you wanted the background color to be empty, then do something like 0x00FFFFFF for the first field. (I don't know what the 0x means however.)
}