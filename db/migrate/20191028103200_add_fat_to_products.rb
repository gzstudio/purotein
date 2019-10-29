class AddFatToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :fat, :integer
  end
end
