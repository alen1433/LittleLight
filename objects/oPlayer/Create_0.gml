/// @description Set up
x = room_width / 2; y = room_height / 2;
moveSpeed = 3;
talking = false;
dText = "";
dName = "";
dCurLen = 1;
maxWLen = 63;
nextDisplay = true;

//Reading and decoding the json file
dialogueText = "";
if(file_exists("Dialogue.json")){
	dialogueJson = file_text_open_read("Dialogue.json");
	while(!file_text_eof(dialogueJson)){
		dialogueText += file_text_read_string(dialogueJson);
		file_text_readln(dialogueJson);
	}
	file_text_close(dialogueJson);
	decodedText = json_decode(dialogueText);
}

enum playerStates{
	roaming,
	talking
}

global.currentPState = playerStates.roaming;