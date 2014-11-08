require 'rails_helper'

describe RecipeForm do
  describe "Instance Methods" do
    let(:recipe_form) { RecipeForm.new({}) }


    it "responds to update_quantity" do
      expect(recipe_form).to respond_to :update_quantity
    end

    it "updates the quantity of a RecipeIngredient" do
      id = RecipeIngredient.create().id
      quantity = 5
      recipe_form.update_quantity(id, quantity)
      recipe_ingredient = RecipeIngredient.find(id)
      expect(recipe_ingredient.amount).to eq quantity
    end

    it "responds to update_units" do
      id = RecipeIngredient.create().id
      units = "grams"
      recipe_form.update_units(id, units)
      recipe_ingredient = RecipeIngredient.find(id)
      expect(recipe_ingredient.units).to eq units
    end
  end
end
