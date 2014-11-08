require 'rails_helper'

describe RecipesController do
  it "responds to index" do
    expect(RecipesController.new).to respond_to :index
  end

  it "should get index" do
    get 'index'
    expect(response).to render_template(:index)
  end

end
