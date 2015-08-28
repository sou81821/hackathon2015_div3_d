class CreateUploadImages < ActiveRecord::Migration
  def change
    create_table :upload_images do |t|
      t.string :image
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
