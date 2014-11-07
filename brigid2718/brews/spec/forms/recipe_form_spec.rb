require 'rails_helper'

describe RecipeForm do
  describe "Instance Methods" do
    let(:recipe) { RecipeForm.new({}) }


    it "responds to update_quantity" do
      expect(recipe).to respond_to :update_quantity
    end

    it "updates the quantity of a RecipeIngredient" do
      id = RecipeIngredient.create().id
      quantity = 5
      recipe.update_quantity(id, quantity)
      recipe_ingredient = RecipeIngredient.find(id)
      expect(recipe_ingredient.amount).to eq quantity
    end
  end
end
