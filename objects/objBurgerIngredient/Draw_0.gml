if (shake > 0) {
	var ran_y = irandom_range(-shake,shake);
	draw_sprite_ext(sprite_index,ingredient,x,y+ran_y,flip,1,0,c_white,1);
	shake--;
} else {
	
	draw_sprite_ext(sprite_index,ingredient,x,y,flip,1,0,c_white,1);
}
