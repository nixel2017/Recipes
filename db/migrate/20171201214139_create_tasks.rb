class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.text :body
      t.references :guide, foreign_key: true

      t.timestamps
    end
  end
end
