x = global.cmx;
y = global.cmy;

global.cmx = lerp(global.cmx, obt_player1.x - global.cmw/2, .2);
global.cmy = lerp(global.cmy, obt_player1.y - global.cmh/2, .2);

camera_set_view_pos(view_camera[0], global.cmx, global.cmy);