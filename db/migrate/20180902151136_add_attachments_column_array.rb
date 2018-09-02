class AddAttachmentsColumnArray < ActiveRecord::Migration[5.2]
  def change
    add_column :file_uploads, :attachments, :string, array: true, default: []
  end
end
