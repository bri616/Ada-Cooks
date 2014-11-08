require 'rails_helper'

describe RecipesController do
  it "responds to index" do
    expect(RecipesController.new).to respond_to :index
  end

end
