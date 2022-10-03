cheese_allow = false;
lettuce_allow = false;
tomato_allow = false;
pickle_allow = false;
onion_allow = false;
ketchup_allow = false;
mustard_allow = false;
mayo_allow = false;

allow_options = ds_list_create();
ds_list_add(allow_options,"ch","lt","tm","pic","oni","ktp","mus","myo");
ds_list_shuffle(allow_options);

textOrder = ds_list_create();

function resetOptions() {
	cheese_allow = false;
	lettuce_allow = false;
	tomato_allow = false;
	pickle_allow = false;
	onion_allow = false;
	ketchup_allow = false;
	mustard_allow = false;
	mayo_allow = false;

	ds_list_clear(allow_options);
	ds_list_add(allow_options,"ch","lt","tm","pic","oni","ktp","mus","myo");
	ds_list_shuffle(allow_options);
	
	ds_list_clear(textOrder);
	ds_list_clear(curOrder);
	
	makeOrder();
	orderScore = 0;
}

function newIngredients() {
	if (!ds_list_empty(allow_options)) {
		var item = ds_list_find_value(allow_options,0);
		switch (item) {
		    case "ch":
		        cheese_allow = true;
				objIngredientList.addIngredient("Cheese","H");
		        break;
		    case "lt":
		        lettuce_allow = true;
				objIngredientList.addIngredient("Lettuce","L");
		        break;
		    case "tm":
		        tomato_allow = true;
				objIngredientList.addIngredient("Tomatos","T");
		        break;
		    case "pic":
		        pickle_allow = true;
				objIngredientList.addIngredient("Pickles","I");
		        break;
		    case "oni":
		        onion_allow = true;
				objIngredientList.addIngredient("Onions","O");
		        break;
		    case "ktp":
		        ketchup_allow = true;
				objIngredientList.addIngredient("Ketchup","K");
		        break;
		    case "mus":
		        mustard_allow = true;
				objIngredientList.addIngredient("Mustard","M");
		        break;
		    case "myo":
		        mayo_allow = true;
				objIngredientList.addIngredient("Mayo","Y");
		        break;
		}
		ds_list_delete(allow_options,0);
		objIngredientList.anim = 200;
	}
}

function makeOrder() {
	
	ds_list_clear(curOrder); // Data
	ds_list_clear(textOrder); // Display
	
	ds_list_add(curOrder,"bun_bottom");
	
	// Patties
	var mt = irandom_range(1,10);
	if (mt >= 10) {
		ds_list_add(curOrder,"meat_patty","meat_patty","meat_patty");
		ds_list_add(textOrder,"3x Patties");
	} else if (mt >=6) {
		ds_list_add(curOrder,"meat_patty","meat_patty");
		ds_list_add(textOrder,"2x Patties");
	} else {
		ds_list_add(curOrder,"meat_patty");
		ds_list_add(textOrder,"Patty");
	}
	
	// Cheese
	if (cheese_allow) {
		var ch = irandom_range(1,10);
		if (ch >= 8) {
			ds_list_add(curOrder,"con_cheese","con_cheese");
			ds_list_add(textOrder,"2x Cheese");
		} else if (ch >=4) {
			ds_list_add(curOrder,"con_cheese");
			ds_list_add(textOrder,"Cheese");
		}
	}
	
	// Lettuce
	if (lettuce_allow) {
		var lt = irandom_range(1,10);
		if (lt >= 10) {
			ds_list_add(curOrder,"veg_lettuce","veg_lettuce");
			ds_list_add(textOrder,"2x Lettuces");
		} else if (lt >=6) {
			ds_list_add(curOrder,"veg_lettuce");
			ds_list_add(textOrder,"Lettuce");
		}
	}
	
	// Tomato
	if (tomato_allow) {
		var tm = irandom_range(1,10);
		if (tm >= 10) {
			ds_list_add(curOrder,"veg_tomato","veg_tomato");
			ds_list_add(textOrder,"2x Tomatoes");
		} else if (tm >=6) {
			ds_list_add(curOrder,"veg_tomato");
			ds_list_add(textOrder,"Tomatoes");
		}
	}
	
	// Pickles
	if (pickle_allow) {
		var pic = irandom_range(1,10);
		if (pic >= 10) {
			ds_list_add(curOrder,"veg_pickle","veg_pickle");
			ds_list_add(textOrder,"2x Pickles");
		} else if (pic >=6) {
			ds_list_add(curOrder,"veg_pickle");
			ds_list_add(textOrder,"Pickles");
		}
	}
	
	// Onion
	if (onion_allow) {
		var oni = irandom_range(1,10);
		if (oni >= 10) {
			ds_list_add(curOrder,"veg_onion","veg_onion");
			ds_list_add(textOrder,"2x Onions");
		} else if (oni >=6) {
			ds_list_add(curOrder,"veg_onion");
			ds_list_add(textOrder,"Onions");
		}
	}
	
	// Ketchup
	if (ketchup_allow) {
		var ktp = irandom_range(1,10);
		if (ktp >= 10) {
			ds_list_add(curOrder,"con_ketchup","con_ketchup");
			ds_list_add(textOrder,"2x Ketchup");
		} else if (ktp >=6) {
			ds_list_add(curOrder,"con_ketchup");
			ds_list_add(textOrder,"Ketchup");
		}
	}
	
	// Mustard
	if (mustard_allow) {
		var mus = irandom_range(1,10);
		if (mus >= 10) {
			ds_list_add(curOrder,"con_mustard","con_mustard");
			ds_list_add(textOrder,"2x Mustard");
		} else if (mus >=6) {
			ds_list_add(curOrder,"con_mustard");
			ds_list_add(textOrder,"Mustard");
		}
	}
	
	// Mayo
	if (mayo_allow) {
		var myo = irandom_range(1,10);
		if (myo >= 10) {
			ds_list_add(curOrder,"con_mayo","con_mayo");
			ds_list_add(textOrder,"2x Mayo");
		} else if (myo >=6) {
			ds_list_add(curOrder,"con_mayo");
			ds_list_add(textOrder,"Mayo");
		}
	}
	
	
	
	
	ds_list_add(curOrder,"bun_top");
	
}




curOrder = ds_list_create();

makeOrder();



orderScore = 0;
