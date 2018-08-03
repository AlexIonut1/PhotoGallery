
class PhotosController < ApplicationController
  skip_before_action :verify_authenticity_token
  def index
    @user_id = session[:user_id]
    @photos = Photo.where("user_id = ?", @user_id)
  end

  def upload

  end

  def processUpload
    @photo = Photo.new
    @photo.user_id = session[:user_id]
    @photo.title = "title1.jpg"
    @photo.description = "Description2"
    @photo.created_at = '2018/6/6'
    @photo.updated_at = '2018/6/6'


    if @photo.save
     #redirect_to photos_index_url, notice: "The photo #{@photo.title} has been uploaded."
    else
     #render "new"
    end
  end
end
