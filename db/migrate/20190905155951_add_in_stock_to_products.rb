class AddInStockToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :in_stock, :boolean, default: true
  end
end
