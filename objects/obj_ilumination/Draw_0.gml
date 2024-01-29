depth = -y;
if  surface_exists(sombra_surface){

surface_set_target(sombra_surface);

 draw_set_color(c_black);
 draw_set_alpha(0.99);
 draw_rectangle(0, 0, room_width, room_height, false);
 draw_set_alpha(1);
 draw_set_color(c_grey);

 
 gpu_set_blendmode(bm_subtract);
 
 if instance_exists(obt_player1){
	var _num = instance_exists(obt_player1)	 	 
	
	for (var i = 0; i < _num; i++){
		var _inst = instance_find(obt_player1, i);
		
		draw_set_alpha(0.4);
		draw_circle(_inst.x, _inst.y, 30+ irandom(1), false);
		
		draw_set_alpha(0.3);
		draw_circle(_inst.x, _inst.y, 40 + irandom(1), false);
		
	}
	
 }
 if instance_exists(obj_fogueira){
	var _num = instance_exists(obj_fogueira)	 	 
	
	for (var i = 0; i < _num; i++){
		var _inst = instance_find(obj_fogueira, i);
		
		draw_set_alpha(0.4);
		draw_circle(_inst.x, _inst.y, 90 + irandom(1), false);
		
		draw_set_alpha(0.3);
		draw_circle(_inst.x, _inst.y, 100 + irandom(1), false);
		
	}
	
 }
 
 if instance_exists(Obj_wagon){
	var _num = instance_exists(Obj_wagon)	 	 
	
	for (var i = 0; i < _num; i++){
		var _inst = instance_find(Obj_wagon, i);
		
		draw_set_alpha(0.4);
		draw_circle(_inst.x, _inst.y, 50 + irandom(1), false);
		
		draw_set_alpha(0.3);
		draw_circle(_inst.x, _inst.y, 60 + irandom(1), false);
		
	}
	
 }
 
 if instance_exists(Obj_Portal){
	var _num = instance_exists(Obj_Portal)	 	 
	
	for (var i = 0; i < _num; i++){
		var _inst = instance_find(Obj_Portal, i);
		
		draw_set_alpha(0.4);
		draw_circle(_inst.x, _inst.y, 50 + irandom(1), false);
		
		draw_set_alpha(0.3);
		draw_circle(_inst.x, _inst.y, 60 + irandom(1), false);
		
	}
	
 }
 

  
 	    //draw_set_alpha(0.8);
		//draw_circle(mouse_x, mouse_y, 24 + irandom(1), false);
		
		//draw_set_alpha(0.4);
		//draw_circle(mouse_x, mouse_y, 32 + irandom(1), false);
        
		//gpu_set_blendenable(bm_normal);
		//draw_set_alpha(1);
		draw_set_alpha(1)
		gpu_set_blendmode(bm_normal)
        surface_reset_target();
 
 }else{
 
 sombra_surface = surface_create(room_width, room_height);
 
 
 }

	draw_surface(sombra_surface, 0, 0);
	
	






