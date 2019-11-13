/// @description drawing the textboxes
draw_self();
if(global.currentPState = playerStates.talking){
	if(talking){
		draw_set_color(c_black);
		draw_rectangle(room_width/20, (room_height/10) * 7, (room_width/20)*19, (room_height/20) * 19, false);
		draw_set_color(c_white);
		draw_text_transformed((room_width/20) * 2, (room_height/10) * 7 + 20,display,2,2,0);
	}
}
