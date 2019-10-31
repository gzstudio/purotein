class Brand < ApplicationRecord
    has_many :products
    # mount_uploader :img, PictureUploader
    has_one_attached :img
end
