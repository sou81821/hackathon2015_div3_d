class UploadImagesController < ApplicationController
  def index
  end

  def new
    @upload_image = UploadImage.new
  end

  def show
  end

  def create
    @upload_image = UploadImage.new(upload_image_params)
    respond_to do |format|
      if @upload_image.save
        format.html { redirect_to @upload_image, notice: 'successfully created.' }
        format.json { render :show, status: :created, location: @upload_image }
      else
        format.html { render :new }
        format.json { render json: @upload_image.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
  end

  def upload_image_params
    params.require(:upload_image).permit(:image, :user_id)
  end

end
