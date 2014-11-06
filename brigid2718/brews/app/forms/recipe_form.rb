class RecipeForm
  def initialize(attributes)
    @attributes = attributes

  end

  def save
    # create an instance of recipe Recipe class
    # create recipe ingredients for each id in ingredients key
    recipe = Recipe.new

    @ingredients = []
    @attributes[:ingredients].each do |id|
      @ingredients << Ingredient.find(id)
    end


    @ingredients.each do |ingredient|
      recipe.recipe_ingredients << ingredient
    end

  end
end
