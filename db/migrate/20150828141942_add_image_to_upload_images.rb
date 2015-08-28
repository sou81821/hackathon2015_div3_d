class AddImageToUploadImages < ActiveRecord::Migration
  def change
    add_column :upload_images, :image, :string
  end
end
