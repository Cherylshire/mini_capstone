class RenameProdictIdOnOrders < ActiveRecord::Migration[6.0]
  def change
    rename_column :orders, :prodict_id, :product_id
  end
end
