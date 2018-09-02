class ChangeAttachmentColumnInFileUpload < ActiveRecord::Migration[5.2]
  def change
  remove_column :file_uploads, :attachment
  end
end
