class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.text :product_name
      t.references :brand, null: false, foreign_key: true
      t.text :product_image

      t.timestamps
    end
  end
end
