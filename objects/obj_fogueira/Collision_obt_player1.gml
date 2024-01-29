/// @description Insert description here
// You can write your code in this editor
if other.tomardano == true{
var _dir = point_direction(x, y, other.x, other.y);

with (other){
	empurrar_dir = _dir;
	estado = scripts_do_player_hit;
	alarm[2] = 10;
	alarm[3] = 100;
	tomardano = false;
	if(global.vida > 0){
	global.vida -=1;
	}
   }

}






