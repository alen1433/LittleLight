/// @description
#macro view view_camera[0]

camera_set_view_size(view, view_width, view_height);

if(instance_exists(oPlayer)){
	var _x = clamp(oPlayer.x - view_width/2, 0, room_width - view_width);
	var _y = clamp(oPlayer.y - view_height/2, 0, room_height - view_height);
	
	var curX = camera_get_view_x(view);
	var curY = camera_get_view_y(view);
	
	var spd = .1;
	
	camera_set_view_pos(view, 
						lerp(curX, _x, spd),
						lerp(curY, _y, spd));
}