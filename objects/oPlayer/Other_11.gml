/// @description The player is talking

//if the words are typing out, finish the word
if((keyboard_check_pressed(vk_space) || keyboard_check_pressed(ord("E"))) && dCurLen < dTextLen){
	dCurLen = dTextLen;
}
//go to the next line in the instance
else if(((keyboard_check_pressed(vk_space) || keyboard_check_pressed(ord("E"))) && dTextCurLine + 1 < dListSize)){
	dTextCurLine++;
	dText = dialogueList [| dTextCurLine];
	dCurLen = 0;
	dTextLen = string_length(dText);
}
//end the convorsation, player can move again
else if((keyboard_check_pressed(vk_space) || keyboard_check_pressed(ord("E")))){
	global.currentPState = playerStates.roaming;
}
