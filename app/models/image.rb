class Image < ApplicationRecord
  belongs_to :product
  # above is the short way to write this method.
  # see product.rb
  # a image is one of the images that owns by one product.
  # def product
  #   Product.find_by(id: self.product.id)
  # end
end
