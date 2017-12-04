class AddDifficultyToGuides < ActiveRecord::Migration[5.1]
  def change
    add_column :guides, :difficulty, :string
  end
end
