
class PhotosController < ApplicationController
  skip_before_action :verify_authenticity_token
  def index
    @user_id = session[:user_id]
    @photos = Photo.where("user_id = ?", @user_id)
  end

  def upload
    @photo = Photo.new
  end

  # def processUpload
  #   @photo = Photo.new
  #   @photo.user_id = session[:user_id]
  #   @photo.title = "title1.jpg"
  #   @photo.description = "Description2"
  #   @photo.created_at = '2018/6/6'
  #   @photo.updated_at = '2018/6/6'
  #
  #
  #   if @photo.save
  #    #redirect_to photos_index_url, notice: "The photo #{@photo.title} has been uploaded."
  #   else
  #    #render "new"
  #   end
  # end

  #New action for creating a new photo
  # def new
  #   @photo = Photo.new
  # end

  #Create action ensures that submitted photo gets created if it meets the requirements
  def create
    @photo = Photo.new(photo_params)
    @photo.user_id = session[:user_id]
    if @photo.save
      flash[:notice] = "Successfully added new photo!"
      redirect_to photos_index_url
    else
      flash[:alert] = "Error adding new photo!"
      render :new
    end
  end

  private

  #Permitted parameters when creating a photo. This is used for security reasons.
  def photo_params
    params.require(:photo).permit(:title, :image)
  end

end
