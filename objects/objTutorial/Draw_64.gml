
if (objGameState.state == "howto") {
	switch (tutorialStep) {
		case 0:
			str = "Burger Rush requires the player to assemble a burger in 10 seconds. \n\n This game uses only the keyboard.";
			draw_set_halign(fa_center);
			draw_set_color(c_black);
			draw_text_ext(450,253,str, 20,550);
			draw_text(450,503+lengthdir_y(5,rot),"Press Enter to continue.");
			draw_set_color(c_white);
			draw_text_ext(450,250,str,20,550);
			draw_text(450,500+lengthdir_y(5,rot),"Press Enter to continue.");
		break;
		case 1:
			str = "This is the timer.\n\n10 seconds to finish a burger, and resets after each successful burger.";
			draw_set_halign(fa_center);
			draw_set_color(c_black);
			draw_text_ext(465,103,str, 20,350);
			draw_text(450,503+lengthdir_y(5,rot),"Press Enter to continue.");
			draw_set_color(c_white);
			draw_text_ext(465,100,str,20,350);
			draw_text(450,500+lengthdir_y(5,rot),"Press Enter to continue.");
			
			draw_sprite_ext(sprArrow,0,150,75+lengthdir_y(10,rot),2,2,90,c_white,1);
		break;
		
		case 3:
			str = "This displays what the burger requires. Press the corresponding key to add an ingredient, and ingredients can be added in any order.\n\nHowever, each burger must start and end with a burger bun.";
			draw_set_halign(fa_center);
			draw_set_color(c_black);
			draw_text_ext(565,153,str, 20,400);
			draw_text(450,503+lengthdir_y(5,rot),"Press Enter to continue.");
			draw_set_color(c_white);
			draw_text_ext(565,150,str,20,400);
			draw_text(450,500+lengthdir_y(5,rot),"Press Enter to continue.");
			
			draw_sprite_ext(sprArrow,0,300+lengthdir_x(10,rot),240,2,2,180,c_white,1);
		break;
		
		case 2:
			str = "This shows what ingredients are available to be added, and the corresponding key needed to be pressed.\n\nNew ingredients are added after every 5 completed burgers.";
			draw_set_halign(fa_center);
			draw_set_color(c_black);
			draw_text_ext(550,153,str, 20,425);
			draw_text(450,503+lengthdir_y(5,rot),"Press Enter to continue.");
			draw_set_color(c_white);
			draw_text_ext(550,150,str,20,425);
			draw_text(450,500+lengthdir_y(5,rot),"Press Enter to continue.");
			
			draw_sprite_ext(sprArrow,0,640+lengthdir_x(10,rot),90,2,2,0,c_white,1);
		break;
		
		case 4:
			str = "Once the burger has all the necessary ingredients, just press Enter to complete the burger.\n\nYou can always press Enter to start over the burger if mistakes were made.";
			draw_set_halign(fa_center);
			draw_set_color(c_black);
			draw_text_ext(550,153,str, 20,425);
			draw_text(450,503+lengthdir_y(5,rot),"Press Enter to continue.");
			draw_set_color(c_white);
			draw_text_ext(550,150,str,20,425);
			draw_text(450,500+lengthdir_y(5,rot),"Press Enter to continue.");
		break;
		
		case 5:
			str = "If the burger was correct, you will be scored based on the number on ingredients in the burger.\n\nYou can see you current score here.";
			draw_set_halign(fa_center);
			draw_set_color(c_black);
			draw_text_ext(550,173,str, 20,425);
			draw_text(450,503+lengthdir_y(5,rot),"Press Enter to continue.");
			draw_set_color(c_white);
			draw_text_ext(550,170,str,20,425);
			draw_text(450,500+lengthdir_y(5,rot),"Press Enter to continue.");
			
			draw_sprite_ext(sprArrow,0,100,500+lengthdir_y(10,rot),2,2,270,c_white,1);
		break;
		
		case 6:
			str = "The goal is to get as high as a score possible.\n\nSo, get busy assembling burgers!!!";
			draw_set_halign(fa_center);
			draw_set_color(c_black);
			draw_text_ext(450,173,str, 20,425);
			draw_text(450,503+lengthdir_y(5,rot),"Press Enter to continue.");
			draw_set_color(c_white);
			draw_text_ext(450,170,str,20,425);
			draw_text(450,500+lengthdir_y(5,rot),"Press Enter to continue.");
		break;
		
		case 7:
			objGameState.state = "start";
		break;
	}
	
}

draw_set_halign(fa_left);
draw_set_color(c_white);