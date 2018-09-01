class FileUpload < ApplicationRecord
  mount_uploader :attachment, AttachmentUploader
  validates :name, presence: true

  def save
    super
    rescue ActiveRecord::RecordNotUnique => err
      errors.add :attachment, "'#{attachment.file.original_filename}' already exists"
      false
  end
end
