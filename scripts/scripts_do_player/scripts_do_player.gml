// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scripts_do_player_andando(){
 right = keyboard_check(ord("D"))

 up = keyboard_check(ord("W"))
 left = keyboard_check(ord("A"))
 down = keyboard_check(ord("S"))
 key_shoot = mouse_check_button(mb_left);

var _xx = right - left; 
var _yy = down - up;

if _xx != 0 or _yy != 0{
	
sprite_index = Sprite1

dir = point_direction(x ,y ,x + _xx, y + _yy);
hspd = lengthdir_x(spd, dir);
vspd = lengthdir_y(spd, dir);
x += hspd;
y += vspd;

}else{
 sprite_index = Sprite7
}

if keyboard_check(vk_space)
{
	room_restart()
}

if (left){
	 sprite_index = Spr_Left
}

if (right){
	 sprite_index = Spr_Right
}
if (up){
	 sprite_index = Spr_Down
}
if (down){
	 sprite_index = Spr_Up
}

}


function scripts_do_player_hit(){
  if alarm[2] > 0{
	  hspd = lengthdir_x(3, empurrar_dir);
	  vspd = lengthdir_y(3, empurrar_dir);
  }else{
	  estado = scripts_do_player_andando()
  }
}