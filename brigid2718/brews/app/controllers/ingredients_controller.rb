class IngredientsController < ApplicationController
  # index, show, edit, update, new, create, destroy
  def index
    @ingredients = Ingredient.all
  end

  def show
    find_ingredient
  end

  def edit
    find_ingredient
    render :template => "/ingredients/edit_new_form", :locals => { :obj => @ingredient }
  end

  def update
    find_ingredient
    if @ingredient.update(ingredient_params)
      redirect_to ingredient_path
    else
      render :template => "/ingredients/edit_new_form", :locals => { :obj => @ingredient }
    end
  end

  def new
    @ingredient = Movie.new
    render :template => "/ingredients/edit_new_form", :locals => { :obj => @ingredient }
  end

  def create
    @ingredient = Ingredient.new(ingredient_params)
    if @ingredient.save
      redirect_to ingredients_path
    else
      render :template => "/ingredients/edit_new_form", :locals => { :obj => @ingredient }
    end
  end

  def destroy
  end

  private

  def ingredient_params
    params.require(:ingredient).permit(:name,:category)
  end

  def find_ingredient
    @ingredient = Ingredient.find(params.require(:id))
  end
end
