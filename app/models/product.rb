class Product < ApplicationRecord
    belongs_to :brand, :optional => true
    # mount_uploader :product_image, ProductImgUploader
    has_one_attached :image
end
