var textAdd:FlxText;

function create(){
  textAdd = new FlxText(0, 500);
  textAdd.fieldWidth = 12800;
  textAdd.antialiasing = true;
  textAdd.cameras = [camHUD];
  add(textAdd);
}

function beatHit(){
  if (curBeat == 15) {
    textAdd.text = ("The");
  }
}