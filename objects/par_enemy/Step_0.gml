randomize();

var _border = 64;

if y < global.cmy - _border{
	y = global. cmy + global.cmh - _border;
}
 if y > global.cmy + global.cmh + _border{
     y = global.cmy - _border;	 
 }
 
 if x < global.cmx - _border{
	 x = global.cmx + global.cmw + _border
 }
 
 if x > global.cmx + global.cmw + _border{
	 x = global.cmx - _border;	
 }

dir = point_direction(x, y, obt_player1.x, obt_player1.y);
hspd = lengthdir_x(spd, dir);
vspd = lengthdir_y(spd, dir);

x += hspd;
y += vspd;



