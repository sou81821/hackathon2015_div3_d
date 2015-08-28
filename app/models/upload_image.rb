class UploadImage < ActiveRecord::Base
	mount_uploader :image_uploader, ImageUploader
end
