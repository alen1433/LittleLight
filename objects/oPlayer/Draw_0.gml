/// @description drawing the textboxes
draw_self();
var viewW = camera_get_view_width(view);
var viewH = camera_get_view_height(view);
if(global.currentPState = playerStates.talking){
	if(talking){
		draw_set_color(c_black);
		draw_rectangle(viewW/20, (viewH/10) * 9, (viewW/20)*19, viewH, false);
		draw_set_color(c_white);
		draw_text_transformed(viewW/2,viewH/2,display,2,2,0);
	}
}
