/// @description Set up
x = room_width / 2; y = room_height / 2;
moveSpeed = 3;
talking = false;
display = "";

enum playerStates{
	roaming,
	talking
}

global.currentPState = playerStates.roaming;