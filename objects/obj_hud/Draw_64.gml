var _escala = 3;

if global.vida = 5 {
draw_sprite(spr_vida,5,610,710)
}
if global.vida = 4 {
draw_sprite(spr_vida,4,610,710)
}
if global.vida = 3 {
draw_sprite(spr_vida,3,610,710)
}
if global.vida = 2 {
draw_sprite(spr_vida,2,610,710)
}
if global.vida = 1 {
draw_sprite(spr_vida,1,610,710)
}
if global.vida = 0 {
draw_sprite(spr_vida,0,610,710)
}


//Barra do Boss
var _gl = display_get_gui_width()
if instance_exists(Obj_gatomalvado){
   var _sprw = sprite_get_width(spr_boss_hud) * _escala;
   
   draw_sprite_ext(spr_boss_hud, 0, _gl/2 - _sprw/2, 50, _escala, _escala, 0, c_white, 1)
   draw_sprite_ext(spr_boss_hp, 0, _gl/2 - _sprw/2 + 6, 50, global.vidaboss/global.vida_max_boss * _escala, _escala, 0, c_white, 1);
}