class AddAttachmentToFileUploads < ActiveRecord::Migration[5.2]
  def change
    add_column :file_uploads, :attachment, :json
  end
end
