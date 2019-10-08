class Api::CartedProductsController < ApplicationController
  before_action :authenticate_user # making sure there is someone logged-in.
  
  def index
    @carted_products = current_user.cart # model > user.rb def cart
    # @carted_products = CartedProduct.where(user_id:  current_user.id, status: "carted")

    render 'index.json.jb'
    # if @current_user
    #   puts "Your cart's status is:"
    #   status = "carted"
    # else
    #   puts "Please log in."
    # end
  end

  def create
    @carted_product = CartedProduct.new(
                                        status:       "carted"
                                        User_id:      current_user.id,
                                        product_id:   params[:product_id],
                                        quantity:     params[:quantity]
                                        )
    @carted_product.save
    render 'show.json.jb'
  end

  def destroy
    @carted_product = CartedProduct.find(params[:id])
    @carted_product.destroy(status: "removed") #remove the product but data still stays.
    render json: {message: "successfully destroyed carted product."}
  end
end



# never change "created at", "updated at" or "ID"€.