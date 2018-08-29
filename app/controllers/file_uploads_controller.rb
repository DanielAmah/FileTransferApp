class FileUploadsController < ApplicationController
  def index
    @files = FileUpload.all
  end

  def new
    @file = FileUpload.new
  end

  def create
    @file = FileUpload.new(file_params)
    if @file.save
      redirect_to file_uploads_path, notice: "the file #{@file.name} has been uploaded"
    else
      render "new"
    end
  end

  def destroy
    @file = FileUpload.find(params[:id])
    @file.destroy
    redirect_to file_uploads_path, notice: "the file #{@file.name} has been deleted"
  end

  private

  def file_params
    params.require(:file_upload).permit(:name, :attachment)
  end
end
