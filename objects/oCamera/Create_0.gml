/// @description
global.division_factor = 6;
global.window_scale = 3;

global.view_width = 1920/global.division_factor;
global.view_height = 1020/global.division_factor;
    
var XSize = global.view_width*global.division_factor;
var YSize = global.view_height*global.division_factor;

window_set_size(XSize, YSize);
alarm[0]=1;

surface_resize(application_surface, XSize, YSize);