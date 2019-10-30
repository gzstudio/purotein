class CreateProducts < ActiveRecord::Migration[6.0]
  def change

    create_table :brands do |t|
      t.string :name
      t.string :img

      t.timestamps
    end

    create_table :products do |t|
      t.string :product_name
      t.references :brand, null: false, foreign_key: true
      t.string :product_image

      t.timestamps
    end
  end
end
