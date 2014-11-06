class BrewbookController < ApplicationController
  def index
    @featured_recipe = Recipe.first
  end
end
