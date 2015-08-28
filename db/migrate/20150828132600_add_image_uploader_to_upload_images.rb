class AddImageUploaderToUploadImages < ActiveRecord::Migration
  def change
    add_column :upload_images, :image_uploader, :string
  end
end
