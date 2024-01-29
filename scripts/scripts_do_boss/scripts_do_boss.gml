// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scripts_do_boss_escolher_ataque(){
	if alarm[0] <= 0{
    var _ataque = choose(scripts_boss_ataque_1, scripts_boss_ataque_2)
	estado = _ataque;
	alarm[0] = 100;
	}
}
function scripts_boss_ataque_1(){
var _dir = 0;

repeat(8){
        var _inst = instance_create_layer(x, y, "instances", obj_boss_shoot);
		_inst.speed = 2.8;
		_inst.direction = _dir;
		
		_dir += 45;
     }
	 
	 estado = scripts_do_boss_escolher_ataque;
}
function scripts_boss_ataque_2(){
var _dir = 0;

repeat(18){
        var _inst = instance_create_layer(x, y, "instances", obj_boss_shoot);
		_inst.speed = 1.5;
		_inst.direction = _dir;
		
		_dir += 20;
     }
	 
	 estado = scripts_do_boss_escolher_ataque;
}

