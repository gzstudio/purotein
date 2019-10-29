class Brand < ApplicationRecord
    has_many :products
    has_one_attached :image
    mount_uploader :img, PictureUploader
end
