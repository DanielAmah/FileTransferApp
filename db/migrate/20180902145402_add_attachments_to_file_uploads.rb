class AddAttachmentsToFileUploads < ActiveRecord::Migration[5.2]
  def change
    add_column :file_uploads, :attachments, :json
  end
end
