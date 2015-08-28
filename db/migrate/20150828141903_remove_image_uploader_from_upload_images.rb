class RemoveImageUploaderFromUploadImages < ActiveRecord::Migration
  def change
    remove_column :upload_images, :image_uploader, :string
  end
end
