/// @description The player is talking
if(keyboard_check_pressed(vk_space) || keyboard_check_pressed(ord("E"))){
	global.currentPState = playerStates.roaming;	
}
