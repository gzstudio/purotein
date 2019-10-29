class UpdateProductImageType < ActiveRecord::Migration[6.0]
  def change
    change_column :products, :product_image, :string
  end
end
