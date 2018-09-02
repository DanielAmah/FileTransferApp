class FileUpload < ApplicationRecord
  mount_uploaders :attachments, AttachmentUploader

  def save
    super
    rescue ActiveRecord::RecordNotUnique => err
      errors.add :attachments, "'#{attachments.file.original_filename}' already exists"
      false
  end
end
