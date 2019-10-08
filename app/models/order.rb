class Order < ApplicationRecord
  belongs_to :user
  has_many :carted_products
  has_many :products, through: :carted_products

  def initialize(options)
    super
    complete_purchase
  end

  def calculate_subtotal
    self.subtotal = user.cart.sum { |carted_products| carted_product.subtotal } #self = carted_product, the whole thing to the right of the equal sign is an argument.

    # self.user.cart.sum do |carted_products| #self = an instents of the Class "Order", link to, order_controller.rb "@orders = current_user.orders"
    #   subtotal_sum += carted_products.subtotal_sum
    # end
  end

  def calculate_tax
    self.tax = subtotal * 0.09   # actualy "self.tax = self.subtotal * 0.09", self = @order.
  end

  def calculate_total
    self.total = subtotal + tax  # actualy "self.total = self.subtotal + self.tax", self = @order.
  end

  def complete_purchase
    calculate_subtotal
    calculate_tax
    total
    save
    user.cart.update(order_id: id, status: "purchased")
  end
end
