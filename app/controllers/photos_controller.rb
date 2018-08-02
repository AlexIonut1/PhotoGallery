class PhotosController < ApplicationController
  skip_before_action :verify_authenticity_token
  def index
    @photos = Photo.where("user_id = ?", 1)
  end

  def upload

  end

  def processUpload
    @photo = Photo.new(photo_params)

    if @photo.save
      redirect_to photo_path, notice: "The photo #{@photo.title} has been uploaded."
    else
      render "new"
    end
  end
end
