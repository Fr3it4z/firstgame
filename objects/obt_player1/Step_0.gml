if(global.vida > 0){
right = keyboard_check(ord("D"))

up = keyboard_check(ord("W"))
left = keyboard_check(ord("A"))
down = keyboard_check(ord("S"))
key_shoot = mouse_check_button(mb_left);

var _xx = right - left; 
var _yy = down - up;

if _xx != 0 or _yy != 0{
	
sprite_index = Sprite7

dir = point_direction(x ,y ,x + _xx, y + _yy);
hspd = lengthdir_x(spd, dir);
vspd = lengthdir_y(spd, dir);
x += hspd;
y += vspd;

}

if keyboard_check(vk_space)
{
	room_restart()
}

if (left){
	 sprite_index = Spr_Left
}else{
 sprite_index = Sprite7
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
if(global.vida == 0){
	sprite_index = spr_Morto
}
}


#region Tiro


if alarm[0] <= 0{
	
	
if (key_shoot && global.vida > 0){
   
   var _Shoot = instance_create_layer(x, y+10, "Shoot", obj_shoot);
   _Shoot.speed = 3;
   _Shoot.direction = point_direction(x, y, mouse_x, mouse_y)
   
}
alarm[0] = Shoot_timer;

}
#endregion




show_debug_message(global.vida);