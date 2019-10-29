class Product < ApplicationRecord
  belongs_to :brand, :optional => true
  has_one_attached :product_image
  mount_uploader :product_image, ProductImgUploader
end
