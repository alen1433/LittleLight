/// @description Drawing the textboxes

var viewWS = camera_get_view_x(view);
var viewHS = camera_get_view_y(view);

var DiagBoxX1 = ((global.view_width * global.window_scale)/20);
var DiagBoxY1 = ((global.view_height * global.window_scale) / 20) * 13;
var DiagBoxX2 = ((global.view_width * global.window_scale)/20) * 19;
var DiagBoxY2 = ((global.view_height * global.window_scale)/20) * 19;

var DiagTxtX = scale;
var DiagTxtY = scale;

if(global.currentPState = playerStates.talking){
	if(talking){
		draw_set_color(c_black);
		draw_rectangle(DiagBoxX1, DiagBoxY1, DiagBoxX2, DiagBoxY2, false);
		draw_set_color(c_white);
		draw_text_transformed(DiagBoxX1 + (10/DiagTxtX),DiagBoxY1 + (10/DiagTxtY),display,DiagTxtX,DiagTxtY,0);
	}
}