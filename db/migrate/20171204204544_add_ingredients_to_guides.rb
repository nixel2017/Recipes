class AddIngredientsToGuides < ActiveRecord::Migration[5.1]
  def change
    add_column :guides, :ingredients, :text
  end
end
