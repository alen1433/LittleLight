/// @description Set up
x = room_width / 2; y = room_height / 2;
moveSpeed = 3;
talking = false;
dText = "";
dName = "";
dCurLen = 1;
maxWLen = 63;
nextDisplay = true;

dialogue = array_create(3,noone);
dialogue[0] = ["This is my first text",
	"And this is the second text that is a bit longer",
	"and this is the third and final text that wee ned to test because it is so very very long and it works all of it finaly"];
dialogue[1] = ["This is the secnod text"];
dialogue[2] = ["This is the third and final text"];

enum playerStates{
	roaming,
	talking
}

global.currentPState = playerStates.roaming;