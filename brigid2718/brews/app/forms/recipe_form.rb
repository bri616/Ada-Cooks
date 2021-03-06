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
      if id != ""
        recipe_ingredient = @recipe.recipe_ingredients.create(ingredient_id: id)
        update_quantity(recipe_ingredient.id, @attributes[:recipe_ingredient_quantity][index])
        update_units(recipe_ingredient.id, @attributes[:recipe_ingredient_units][index])
      end
    end

    @recipe.valid?

  end

  def update
    @recipe = Recipe.find(@attributes[:recipe_id])
    @recipe.update(
      title:      @attributes[:title],
      instructions: @attributes[:instructions]
    )
    @attributes[:ingredients].each_with_index do |id, index|
      if id != ""
        recipe_ingredient = Ingredient.find_by("id = ?", id).recipe_ingredients.find_by("recipe_id = ?", @recipe.id)
        recipe_ingredient = @recipe.recipe_ingredients.create(ingredient_id: id) if recipe_ingredient == nil
        update_quantity(recipe_ingredient.id, @attributes[:recipe_ingredient_quantity][index])
        update_units(recipe_ingredient.id, @attributes[:recipe_ingredient_units][index])
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
