class ImageUploader < CarrierWave::Uploader::Base
<<<<<<< HEAD
	#MiniMagick Include
	include CarrierWave::RMagick
=======
	include CarrierWave::MiniMagick
>>>>>>> e6fc257710e29a0af651801af0a2b6260111aa47
	#どんな画像もjpgに変換
	process :convert => 'jpg'
	process :do_stuff => [ 1, 100, 200 ]
	#ストレージタイプ
	storage :file
	#保存先を指定
	def store_dir
		"files"
	end
	#jpg, pngのみ受け付ける
	def extension_white_list
		%w(jpg jpeg png)
	end
	#thumbnailを作成
	version :thumb do
		process :resize_to_limit => [ 500, 500 ]
	end
	#ファイルネームを日付で保存
	def filename
	time = Time.now
	name = time.strftime( '%Y%m%d%H%M%s' ) + '.jpg'
	name.downcase
	end
	#binding.pry
	def do_stuff( dot, waveheight, wavewidth )
		manipulate! do |img|
			img = img.implode( dot )
			img = img.wave( waveheight, wavewidth )
		end
	end


end