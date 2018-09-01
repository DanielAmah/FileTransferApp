class AddIndexToAttachment < ActiveRecord::Migration[5.2]
  def change
    add_index :file_uploads, :attachment, :unique => true
  end
end
