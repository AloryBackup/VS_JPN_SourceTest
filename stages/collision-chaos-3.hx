var stage:Stage = null;
function create() {
	stage = loadStage('collision-chaos-3');
}
function update(elapsed) {
	stage.update(elapsed);
}
function beatHit(curBeat) {
	stage.onBeat();
}