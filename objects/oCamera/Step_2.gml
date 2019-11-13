/// @description
#macro view view_camera[0]

camera_set_view_size(view, view_width * window_scale, view_height * window_scale);

if(instance_exists(oPlayer)){
	var _x = clamp(oPlayer.x - (view_width*window_scale)/2, 0, room_width - view_width * window_scale);
	var _y = clamp(oPlayer.y - (view_height*window_scale)/2, 0, room_height - view_height * window_scale);
	
	var curX = camera_get_view_x(view);
	var curY = camera_get_view_y(view);
	
	var spd = .1;
	
	camera_set_view_pos(view, 
						lerp(curX, _x, spd),
						lerp(curY, _y, spd));
}