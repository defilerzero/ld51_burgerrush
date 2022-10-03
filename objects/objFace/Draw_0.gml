if (objGameState.state == "start") {
	var ran_y = -lengthdir_y(3,rot);
	
	draw_sprite_ext(sprite_index,image_index,x,y+2+ran_y,1,1,0,c_green,1);
	
	draw_sprite_ext(sprite_index,image_index,x,y+ran_y,1,1,0,c_lime,1);
}