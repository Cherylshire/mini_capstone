class Api::ArtProductsControllersController < ApplicationController
  def products_1_action
    @products = Product.all
    render "products_1_view.json.jb"
end
