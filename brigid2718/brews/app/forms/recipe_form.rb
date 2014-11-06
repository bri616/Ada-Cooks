class RecipeForm
  def initialize(attributes)
    @attributes = attributes

  end

  def recipe
    @recipe
  end

  def submit
    # create an instance of recipe Recipe class
    # create recipe ingredients for each id in ingredients key
    # say whether or not the save was successful

    @recipe = Recipe.create(
      title:      @attributes[:title],
      instructions: @attributes[:instructions]
    )

    @attributes[:ingredients].each do |id|
      @recipe.ingredients << Ingredient.find(id)
    end

    @recipe.valid?


  end
end
