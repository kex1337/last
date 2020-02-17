class Item < ApplicationRecord
mount_uploader :picture, PictureUploader
has_many :line_items, dependent: :destroy


	
	
end
