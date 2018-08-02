class PhotosController < ApplicationController
  skip_before_action :verify_authenticity_token
  def index
    @photos = Photo.where("user_id = ?", 1)
  end

  def upload

  end

  def processUpload

  end
end
