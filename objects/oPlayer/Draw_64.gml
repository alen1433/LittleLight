/// @description Drawing the textboxes

//var viewWS = camera_get_view_x(view);
//var viewHS = camera_get_view_y(view);

var DiagBoxX1 = ((global.view_width * global.window_scale)/20);
var DiagBoxY1 = ((global.view_height * global.window_scale) / 20) * 13;
var DiagBoxX2 = ((global.view_width * global.window_scale)/20) * 19;
var DiagBoxY2 = ((global.view_height * global.window_scale)/20) * 19;

var DiagTxtX = scale - scale/4;
var DiagTxtY = scale - scale/4;

if(global.currentPState = playerStates.talking){
	dSubText = string_copy(dText,1,dCurLen);
	draw_set_color(c_black);
	draw_rectangle(DiagBoxX1, DiagBoxY1, DiagBoxX2, DiagBoxY2, false);
	draw_set_color(c_white);
	draw_text(DiagBoxX1 + (10/DiagTxtX), DiagBoxY1 + (10/DiagTxtY), dName);
	draw_text_transformed(DiagBoxX1 + (10/DiagTxtX),DiagBoxY1 + (10/DiagTxtY)*5,dSubText,DiagTxtX,DiagTxtY,0);
	//draw_text(DiagBoxX1 + (10/DiagTxtX), DiagBoxY1 + (10/DiagTxtY)*19, dCurLen);
	if(dCurLen <= dTextLen && alarm[0] < 0){
		alarm[0] = 1;
	}
	if(dCurLen >= dTextLen && nextDisplay){
		draw_set_halign(fa_right);
		draw_text(DiagBoxX2 - (10/DiagTxtX), DiagBoxY1 + (10/DiagTxtY)*19, "Press 'Space' or 'E' to continue");
		draw_set_halign(fa_left);
		if(alarm[1] <= 0){
			alarm[1] = 1 *room_speed;
		}
	}
}else{
	dCurLen = 1;	
}