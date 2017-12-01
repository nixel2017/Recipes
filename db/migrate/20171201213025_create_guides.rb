class CreateGuides < ActiveRecord::Migration[5.1]
  def change
    create_table :guides do |t|
      t.string :name
      t.string :author

      t.timestamps
    end
  end
end