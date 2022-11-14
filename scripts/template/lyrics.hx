var textAdd:FlxText;

function create(){
  textAdd = new FlxText(0, 500);
  textAdd.fieldWidth = 1280;
  textAdd.antialiasing = true;
  textAdd.cameras = [camHUD];
  add(textAdd);
}

function beatHit(){
  if (curBeat == 5) {
    textAdd.text = ("It's ps1 time");
  }
}