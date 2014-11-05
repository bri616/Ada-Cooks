class CreateRecipeIngredients < ActiveRecord::Migration
  def change
    create_table :recipe_ingredients do |t|
      t.string :type
      t.float :amount
      t.string :units
      t.string :addition_time
      t.integer :recipe_id
      t.integer :ingredient_id

      t.timestamps
    end
  end
end
