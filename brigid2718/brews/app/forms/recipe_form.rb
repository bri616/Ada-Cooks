class RecipeForm
  def initialize(attributes)
    @attributes = attributes

  end

  def recipe
    @recipe
  end

  def submit

    @recipe = Recipe.create(
      title:      @attributes[:title],
      instructions: @attributes[:instructions]
    )

    @attributes[:ingredients].each do |id|
        @recipe.ingredients << Ingredient.find(id) if id.to_i > 0
    end

    @recipe.valid?

  end
end
