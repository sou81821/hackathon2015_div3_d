class ImageUploader < CarrierWave::Uploader::Base
	#MiniMagick Include
	include CarrierWave::MiniMagick
	#どんな画像もjpgに変換
	process :convert => 'jpg'
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

	#画像をImageMagickで変換
	i = rand( 1..5 )
	case i
	when 1
		cmd = "mogrify -implode 40 " + name
	when 2
		cmd = "mogrify -average " + name
	when 3
		cmd = "mogrify -edge 15" + name
	when 4
		cmd = "mogrify -swirl 400 " + name
	when 5
		cmd = "mogrify -wave 20x20 " + name
	else
	end
	system( cmd )
	end
end