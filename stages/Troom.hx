var stage:Stage = null;
function create() {
	stage = loadStage('Troom');
}
function update(elapsed) {
	stage.update(elapsed);
}
function beatHit(curBeat) {
	stage.onBeat();
}