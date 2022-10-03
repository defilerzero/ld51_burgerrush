time--;
rot++;

if (rot > 360) {
	rot = 0;
}

if (time <= 0) {
	image_speed = 1;
}


	if (image_index == 7) {
		image_index = 0;
		image_speed = 0;
		time = irandom_range(2,5)*room_speed;
	}