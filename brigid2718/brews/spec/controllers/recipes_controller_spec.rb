require 'rails_helper'

describe RecipesController do
  it "responds to index" do
    expect(RecipesController.new).to respond_to :index
  end

  it "should get index" do
    get 'index'
    expect(response).to render_template(:index)
  end

  it "index assigns @recipes" do
    recipe = Recipe.create()
    get :index
    expect(assigns(:recipes)).to eq([recipe])
  end

  it "edit assigns @recipe" do
    recipe = Recipe.create()
    get :edit, id: recipe
    expect(assigns(:recipe)).to eq(recipe)
  end
end
