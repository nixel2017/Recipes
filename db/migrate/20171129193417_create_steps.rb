class CreateSteps < ActiveRecord::Migration[5.1]
  def change
    create_table :steps do |t|
      t.text :body
      t.references :create_recipe, foreign_key: true

      t.timestamps
    end
  end
end
