function addIngredient(newIng,newBind) {
	ds_list_add(ingredientList,newIng);	
	ds_list_add(keyBindList,newBind);
}

anim = 0;

ingOffset = 60;
ingredientList = ds_list_create();
keyBindList = ds_list_create();

ds_list_add(ingredientList,"Burger Buns","Meat Patty");
ds_list_add(keyBindList,"B","P");

function resetIngredients() {
	anim = 0;
	
	ds_list_clear(ingredientList);
	ds_list_clear(keyBindList);
	
	ds_list_add(ingredientList,"Burger Buns","Meat Patty");
	ds_list_add(keyBindList,"B","P");

}