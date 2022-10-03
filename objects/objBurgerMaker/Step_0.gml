keyBuns = keyboard_check_pressed(ord("B"));
keyPatty = keyboard_check_pressed(ord("P"));
keyLettuce = keyboard_check_pressed(ord("L"));
keyTomato = keyboard_check_pressed(ord("T"));
keyPickle = keyboard_check_pressed(ord("I"));
keyOnion = keyboard_check_pressed(ord("O"));
keyCheese = keyboard_check_pressed(ord("H"));
keyKetchup = keyboard_check_pressed(ord("K"));
keyMustard = keyboard_check_pressed(ord("M"));
keyMayo = keyboard_check_pressed(ord("Y"));
keySend = keyboard_check_pressed(vk_enter);



if (objGameState.state == "start") {
	if (keySend) { 
		objGameState.state = "playing"; 
	}
	if (keyCheese) {
		objGameState.state = "howto";
		objTutorial.tutorialStep = 0;
	}
	if (keyboard_check_pressed(ord("M"))) {
		if (objGameState.musicOn) {
			objGameState.musicOn = false;
		} else {
			objGameState.musicOn = true;
		}
	}
	if (keyboard_check_pressed(ord("S"))) {
		if (objGameState.soundOn) {
			objGameState.soundOn = false;
		} else {
			objGameState.soundOn = true;
		}
	}
	if (keyboard_check_pressed(vk_escape)) {
		game_end();
	}
}


if (objGameState.state == "howto") {
	
	if (keySend) {
		objTutorial.tutorialStep++;
	}
	
}


if (objGameState.state == "playing") {
	if (keyBuns) {
		var ran_x = irandom_range(-5,5);
		var ran_y = irandom(2);
		if (!bottom_bun) {
			var ing = instance_create_depth(x+ran_x,y-burger_height,0,objBurgerIngredient);
			with (ing) {
				ingredient = 0;
				depth = -other.burger_height;
			}
			ds_list_add(burger_data,"bun_bottom");
			array_push(burger_objects,ing);
			burger_height += 12;
			bottom_bun = true;
		} else {
			var ing = instance_create_depth(x+ran_x,y-burger_height+ran_y,0,objBurgerIngredient);
			with (ing) {
				ingredient = 1;
				depth = -other.burger_height;
			}
			burger_height += 12-ran_y;
			ds_list_add(burger_data,"bun_top");
			array_push(burger_objects,ing);
		}
	}
	if (keyPatty) {
		var ran_x = irandom_range(-5,5);
		var ran_y = irandom(2);
			var ing = instance_create_depth(x+ran_x,y-burger_height+ran_y,0,objBurgerIngredient);
			with (ing) {
				ingredient = 2;
				depth = -other.burger_height;
				flip = choose(-1,1);
			}
			burger_height += 12-ran_y;
			ds_list_add(burger_data,"meat_patty");
			array_push(burger_objects,ing);
	}
	if (keyLettuce && objBurgerOrder.lettuce_allow) {
		var ran_x = irandom_range(-5,5);
		var ran_y = irandom(2);
			var ing = instance_create_depth(x+ran_x,y-burger_height+ran_y,0,objBurgerIngredient);
			with (ing) {
				ingredient = 3;
				depth = -other.burger_height;
				flip = choose(-1,1);
			}
			burger_height += 6-ran_y;
			ds_list_add(burger_data,"veg_lettuce");
			array_push(burger_objects,ing);
	}
	if (keyTomato && objBurgerOrder.tomato_allow) {
		var ran_x = irandom_range(-5,5);
		var ran_y = irandom(2);
			var ing = instance_create_depth(x+ran_x,y-burger_height+ran_y,0,objBurgerIngredient);
			with (ing) {
				ingredient = 4;
				depth = -other.burger_height;
				flip = choose(-1,1);
			}
			burger_height += 6-ran_y;
			ds_list_add(burger_data,"veg_tomato");
			array_push(burger_objects,ing);
	}
	if (keyPickle && objBurgerOrder.pickle_allow) {
		var ran_x = irandom_range(-5,5);
		var ran_y = irandom(2);
			var ing = instance_create_depth(x+ran_x,y-burger_height+ran_y,0,objBurgerIngredient);
			with (ing) {
				ingredient = 5;
				depth = -other.burger_height;
				flip = choose(-1,1);
			}
			burger_height += 6-ran_y;
			ds_list_add(burger_data,"veg_pickle");
			array_push(burger_objects,ing);
	}
	if (keyOnion && objBurgerOrder.onion_allow) {
		var ran_x = irandom_range(-5,5);
		var ran_y = irandom(2);
			var ing = instance_create_depth(x+ran_x,y-burger_height+ran_y,0,objBurgerIngredient);
			with (ing) {
				ingredient = 6;
				depth = -other.burger_height;
				flip = choose(-1,1);
			}
			burger_height += 6-ran_y;
			ds_list_add(burger_data,"veg_onion");
			array_push(burger_objects,ing);
	}
	if (keyCheese && objBurgerOrder.cheese_allow) {
		var ran_x = irandom_range(-5,5);
		var ran_y = irandom(2);
			var ing = instance_create_depth(x+ran_x,y-burger_height+ran_y,0,objBurgerIngredient);
			with (ing) {
				ingredient = 7;
				depth = -other.burger_height;
				flip = choose(-1,1);
			}
			burger_height += 3-ran_y;
			ds_list_add(burger_data,"con_cheese");
			array_push(burger_objects,ing);
	}
	if (keyKetchup && objBurgerOrder.ketchup_allow) {
		var ran_x = irandom_range(-5,5);
		var ran_y = irandom(2);
			var ing = instance_create_depth(x+ran_x,y-burger_height+ran_y,0,objBurgerIngredient);
			with (ing) {
				ingredient = 8;
				depth = -other.burger_height;
				flip = choose(-1,1);
			}
			burger_height += 3-ran_y;
			ds_list_add(burger_data,"con_ketchup");
			array_push(burger_objects,ing);
	}
	if (keyMustard && objBurgerOrder.mustard_allow) {
		var ran_x = irandom_range(-5,5);
		var ran_y = irandom(2);
			var ing = instance_create_depth(x+ran_x,y-burger_height+ran_y,0,objBurgerIngredient);
			with (ing) {
				ingredient = 9;
				depth = -other.burger_height;
				flip = choose(-1,1);
			}
			burger_height += 3-ran_y;
			ds_list_add(burger_data,"con_mustard");
			array_push(burger_objects,ing);
	}
	if (keyMayo && objBurgerOrder.mayo_allow) {
		var ran_x = irandom_range(-5,5);
		var ran_y = irandom(2);
			var ing = instance_create_depth(x+ran_x,y-burger_height+ran_y,0,objBurgerIngredient);
			with (ing) {
				ingredient = 10;
				depth = -other.burger_height;
				flip = choose(-1,1);
			}
			burger_height += 3-ran_y;
			ds_list_add(burger_data,"con_mayo");
			array_push(burger_objects,ing);
	}

	if (keySend) {
		while (array_length(burger_objects) > 0) {
			var obj = array_pop(burger_objects);
			instance_destroy(obj);
		}
	
		// Checking lists
		var pullOrder = ds_list_create();
		ds_list_copy(pullOrder, objBurgerOrder.curOrder);
		ordSize = ds_list_size(pullOrder);
		
			valid = false;
			if (ds_list_find_value(burger_data,0) == "bun_bottom" &&
				ds_list_find_value(burger_data,ds_list_size(burger_data)-1) == "bun_top" ) {
				valid = true;
			}
		
		var points = 0;
	
		for (var i = 0; i < ds_list_size(pullOrder); i++) {
		
			var chk = ds_list_find_value(pullOrder,i);
		
			for (var j = 0; j < ds_list_size(burger_data); j++) {
				if (ds_list_find_value(burger_data,j) == chk) {
					ds_list_delete(burger_data,j);
					ordSize--;
					break;
				}
			}
			points++;
		}
	
	
		if (ds_list_empty(burger_data) && ordSize == 0) {
			if (valid) {
				objBurgerOrder.orderScore += points-2;
				objBurgerOrder.makeOrder();
			
				objTimer.curTime = 10*room_speed;
				objTimer.step += 1;
				
				if (objGameState.soundOn) {
					var snd = audio_play_sound(sndSuccess,2,false);
					audio_sound_pitch(snd,random_range(0.9,1.1));
				}
			} else {
				
				if (objGameState.soundOn) {
					var snd = audio_play_sound(sndWrong,2,false);
					audio_sound_pitch(snd,random_range(0.9,1.1));
				}
			}
		} else {
			if (objGameState.soundOn) {
				var snd = audio_play_sound(sndWrong,2,false);
				audio_sound_pitch(snd,random_range(0.9,1.1));
			}
		}
	
	
		ds_list_clear(burger_data);
		burger_height = 0;
		bottom_bun = false;
	
	}

} else if (objGameState.state == "failed") {
	
	keyRestart = keyboard_check_pressed(ord("R"));
	keyQuit = keyboard_check_pressed(vk_escape);
	if (keyRestart) {
		// Reset everything
		objGameState.state = "playing";
		objGameState.anim = 0;
		objGameState.newScore = false;
		objGameState.ended = false;
		
		objTimer.step = 0;
		objTimer.curTime = 10*room_speed;
		
		objBurgerOrder.resetOptions();
		objIngredientList.resetIngredients();
		
		while (array_length(burger_objects) > 0) {
			var obj = array_pop(burger_objects);
			instance_destroy(obj);
		}
		ds_list_clear(burger_data);
		burger_height = 0;
		bottom_bun = false;
	}
	if (keyQuit) {
		// Reset everything
		objGameState.state = "start";
		objGameState.anim = 0;
		objGameState.newScore = false;
		objGameState.ended = false;
		
		objTimer.step = 0;
		objTimer.curTime = 10*room_speed;
		
		objBurgerOrder.resetOptions();
		objIngredientList.resetIngredients();
		
		while (array_length(burger_objects) > 0) {
			var obj = array_pop(burger_objects);
			instance_destroy(obj);
		}
		ds_list_clear(burger_data);
		burger_height = 0;
		bottom_bun = false;
	}
}