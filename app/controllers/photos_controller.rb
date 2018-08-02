class PhotosController < ApplicationController
  def index
    @photos = Photo.where("user_id = ?", 1)
  end

  def show

  end
end
