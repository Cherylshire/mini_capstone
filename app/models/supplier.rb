class Supplier < ApplicationRecord
  has_many :products
  # above is the short way to write this method.
  # see product.rb
  # a supplier can owns many products
  # def products
  #   Product.where(supplier_id: self.id)
  # end
end
