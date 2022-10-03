if (objGameState.state == "playing") {
	curTime--;

	if (curTime < 0) {
		objGameState.state = "failed";
	}


	if (step >= 5) {
		objBurgerOrder.newIngredients();
		step = 0;
	}
}

frame++;
if (frame >50){frame = 0;}