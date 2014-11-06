class RecipesController < ApplicationController

  def create
    @recipe = RecipeForm.new(params[:recipe_form])
    if @recipe.save
      redirect_to recipe_path(@recipe)
    else
      render :new
    end
  end

  def new
    @recipe = Recipe.new()
  end

end
