class RecipesController < ApplicationController

  def create
    raise params.inspect
    @recipe_form = RecipeForm.new(params[:recipe_form])
    if @recipe_form.submit
      redirect_to recipe_path(@recipe_form.recipe)
    else
      render :new
    end
  end

  def new
    @recipe = Recipe.new()
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

end
