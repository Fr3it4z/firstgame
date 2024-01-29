global.cmw = camera_get_view_width(view_camera[0]);
global.cmh = camera_get_view_height(view_camera[0]);

global.cmx =  obt_player1.x - global.cmw/2;
global.cmy = -obt_player1.y - global.cmh/2;