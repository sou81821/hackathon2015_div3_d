class RemoveImageFromUploadImages < ActiveRecord::Migration
  def change
    remove_column :upload_images, :image, :string
  end
end
