class AddAttachmentImageToGuides < ActiveRecord::Migration[5.1]
  def self.up
    change_table :guides do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :guides, :image
  end
end
