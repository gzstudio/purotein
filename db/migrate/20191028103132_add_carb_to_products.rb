class AddCarbToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :carb, :integer
  end
end
