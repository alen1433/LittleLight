/// @description The player is talking

if((keyboard_check_pressed(vk_space) || keyboard_check_pressed(ord("E"))) && dCurLen < dTextLen){
	dCurLen = dTextLen;
}
else if(((keyboard_check_pressed(vk_space) || keyboard_check_pressed(ord("E"))) && dTextCurLine +1 < dTextMaxLine)){
	dTextCurLine++;
	dText = dTextInst[dTextCurLine];
	dCurLen = 0;
	dTextLen = string_length(dText);
}
else if((keyboard_check_pressed(vk_space) || keyboard_check_pressed(ord("E")))){
	global.currentPState = playerStates.roaming;	
}
