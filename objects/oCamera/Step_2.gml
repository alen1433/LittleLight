/// @description
#macro view view_camera[0]
var XSize = global.view_width * global.window_scale;
var YSize = global.view_height * global.window_scale;

camera_set_view_size(view, XSize, YSize);

if(instance_exists(oPlayer)){
	var _x = clamp(oPlayer.x - (XSize)/2, 0, room_width - XSize);
	var _y = clamp(oPlayer.y - (YSize)/2, 0, room_height - YSize);
	
	var curX = camera_get_view_x(view);
	var curY = camera_get_view_y(view);
	
	var spd = .1;
	
	camera_set_view_pos(view, 
						lerp(curX, _x, spd),
						lerp(curY, _y, spd));
}