class CartedProduct < ApplicationRecord
  belongs_to :order, optional: true
  belongs_to :product
  belongs_to :user

  def subtotal
   quantity * product.price #self.quantity * self.product.price > orders_controller.rb
  end
end
