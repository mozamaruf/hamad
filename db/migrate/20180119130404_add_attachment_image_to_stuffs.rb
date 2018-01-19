class AddAttachmentImageToStuffs < ActiveRecord::Migration[5.0]
  def self.up
    change_table :stuffs do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :stuffs, :image
  end
end
