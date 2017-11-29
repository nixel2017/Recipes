class CreateCreateRecipes < ActiveRecord::Migration[5.1]
  def change
    create_table :create_recipes do |t|
      t.string :name
      t.string :author
      t.string :string

      t.timestamps
    end
  end
end
