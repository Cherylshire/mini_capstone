class Api::OrdersController < ApplicationController
  before_action :authenticate_user, only: [:index, :create]# making sure there is someone logged-in in index and create actions.

  def index  # see model > order.rb
    # if current_user
      @orders = current_user.orders
      render "index.json.jb"
    # else
    #   render json: [], status: :unauthorized
    # end
  end
  
  def create
    # current_user
    #   params hash {"product_id" => "2", "quantity => "3"}
    # carted_products = current_user.cart # model > user.rb
    # product  = Product.find(params[:product_id]) # pull out from param key, :symbol or "string."
    # quantity = params[:quantity].to_i
    # subtotal = product.price * quantity

    @order = Order.new(
                      user_id:      current_user.id
    #                 product_id:   params[:product_id],
    #                 quantity:     params[:quantity],
    #                 subtotal:     subtotal,
    #                 tax:          tax,
    #                 total:        total
                      )
    # @order.complete_purchase replace by model > order.rb def initialize(options)...
    # subtotal_sum = 0

    # carted_products.each do |carted_products|
    #   subtotal_sum += carted_products.subtotal_sum
    # end

    # @order.calculate_subtotal   # @order.subtotal = @order.calculate_subtotal
    # @order.calculate_tax        # @order.tax      = @order.calculate_tax
    # @order.total                # @order.total    = @order.total

    if @order.save
      render 'show.json.jb' # if didn't put render, error "missing templete".
    else
      render json: {errors: @order.errors.full_messages}, status: :unprocessible_entity
    end
    # carted_products.update(order_id: @order.id, status: "purchased")
  end

  def show
    @order = Order.find(params[:id])
    render 'show.json.jb'
  end
end

#   Instance variable is use in an action to pass to .......
#   Local variable only exist in that file.