class Product < ApplicationRecord
  belongs_to :supplier
  # above is the short way to write this method.
  # see supplier.rb
  # a product is one of the products that owns by one supplier.
  # def supplier
  #   Supplier.find_by(id: self.supplier_id)
  # end  

  has_many :images
  # above is the short way to write this method.
  # see image.rb
  # a product can owns many images.
  # def images
  #   Image.where(product_id: self.id)
  # end
  has_many :product_categories
  has_many :categories, through: :product_categories

  has_many :carted_products
  has_many :orders, through: :carted_products
  mas_many :users, through: :carted_products
  
  validates :name, presence: true
  validates :name, uniqueness: true # provend from creating the same name recipe.
  validates :name, length: { in: 2..100 }
  validates :price, presence: true
  validates :price, numericality: { greater_than: 0 }
  validates :description, presence: true
  validates :description, length: { in: 10..500 }


  def is_discounted?
    price > 80 # ? true : false
      # if price < 60
      #   true
      # else
      #   false
      # end
  end

  def category_names
    self.categories.map { |category| category.name }
  end


  def tax
    price * 0.09 # don't need a local variable, don't need "price = price * 0.09".
  end

  def total
    price + tax
  end
end
