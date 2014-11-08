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

    @attributes[:ingredients].each_with_index do |id, index|
        if id.to_i > 0
          recipe_ingredient = @recipe.recipe_ingredients.create(ingredient_id: id)
        update_quantity(recipe_ingredient.id, @attributes[:recipe_ingredient_quantity][index])
        end
    end

    @recipe.valid?

  end

  def update_quantity(id, quantity)
    RecipeIngredient.find(id).update(amount: quantity)
  end

  def update_units(id, units)
    RecipeIngredient.find(id).update(units: units)
  end

end
