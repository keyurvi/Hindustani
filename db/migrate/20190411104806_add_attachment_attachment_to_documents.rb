class AddAttachmentAttachmentToDocuments < ActiveRecord::Migration[5.2]
  def self.up
    change_table :documents do |t|
      t.attachment :attachment
    end
  end

  def self.down
    remove_attachment :documents, :attachment
  end
end
