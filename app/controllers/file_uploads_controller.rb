class FileUploadsController < ApplicationController
  before_action :set_file_upload, only: [:edit, :update, :show, :destroy]
  def index
    @file = FileUpload.new
    @files = FileUpload.all
  end

  def new
    @file = FileUpload.new
  end

  def show
  end

  def create
    @file = FileUpload.new(file_params)
    if @file.save
      redirect_to file_uploads_path, notice: "the file has been uploaded"
    else
      @files = FileUpload.all
      render "index"
    end
  end

  def update
  end

  def destroy
    @file = FileUpload.find(params[:id])
    @file.destroy
    redirect_to file_uploads_path, notice: "the file has been deleted"
  end

  private

  def file_params
    params.require(:file_upload).permit({attachments: []})
  end

  def set_file_upload
    @file = FileUpload.find(params[:id])
  end
end
