class DishIngredientsController < ApplicationController
  def create
    dish = Dish.find(params[:id])
    
    DishIngredient.create(ingredient_id: params[:ingredient_id], dish: dish)
    redirect_to "/dishes/#{dish.id}"
  end
  
  def destroy
    dish_ingredient = DishIngredient.find(params[:id])
    dish_id = dish_ingredient.dish_id
    
    dish_ingredient.delete
    redirect_to "/dishes/#{dish_id}"
  end
end