class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :title
      t.text :instructions
      t.string :author
      t.string :date_brewed
      t.float :batch_size
      t.string :beer_style

      t.timestamps
    end
  end
end
