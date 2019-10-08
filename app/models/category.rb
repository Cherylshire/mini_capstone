class Category < ApplicationRecord
  has_many :product_categories
  has_many :products, through: :product_categories
  # below is the same meaning as has_many through.
  # def products
  #   product_categories.map do |product_category|
  #     product_category.product
  #   end
  # end
end
