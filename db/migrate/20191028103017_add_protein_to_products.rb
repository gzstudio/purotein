class AddProteinToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :protein, :integer
  end
end
