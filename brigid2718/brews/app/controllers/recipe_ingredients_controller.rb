class RecipeIngredientsController < ApplicationController
  def destroy
    @recipe_ingredient = RecipeIngredient.find(params[:id])
    if @recipe_ingredient.destroy
      redirect_to :back
    else
      redirect_to root_path
    end
  end

end
