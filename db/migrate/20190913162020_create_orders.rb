class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.integer :prodict_id
      t.integer :quantity
      t.decimal :subtotal, precision: 11, scale: 2
      t.decimal :tax, precision: 11, scale: 2
      t.decimal :total, precision: 12, scale: 2

      t.timestamps
    end
  end
end
