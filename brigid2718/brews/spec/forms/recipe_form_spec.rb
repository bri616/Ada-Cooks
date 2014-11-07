require 'rails_helper'

describe RecipeForm do
  describe "Instance Methods" do

    it "responds to update_quantity" do
      expect(RecipeForm.new({})).to respond_to :update_quantity
    end
  end
end
