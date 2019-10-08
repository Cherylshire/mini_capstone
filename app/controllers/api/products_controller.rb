class Api::ProductsController < ApplicationController
  before_action :authenticate_admin, only:[:create, :update, :destroy]

  def index
    search_term = params[:search] # Put all variables as 1st thing inside a defind method.
    discount_option = params[:discount]
    sort_attribute = params[:sort]
    sort_order = params[:sort_order]
    category_preference = params[:catgory]
    discount_level = 60
    
    @products = Product.all

    if category_preference
      category = Category.find_by(name: category_preference)
      @products = category.products
    else
      @products = Product.all
    end

    if search_term
      @products = @products.where(
                                "name iLIKE ?",
                                "%#{search_term}%"
                                )
    end

    if discount_option == "true" # this is a string of the word "true", does not means truthy. Need to put true in insomnia. It will show on terminal.
      @products = @products.where("price < ?",
                                  500
                                  )
    end


    if sort_attribute == "price" && sort_order == "desc"
      @products = @products.order(:price => :desc)
    elsif sort_attribute == "price"
      @products = @products.order(sort_attribute)
    else
      @products = @products.order(:id)
    end

    #   Above if statement can be rewrite as below, more dinamaic.
    #    if sort_attribute && sort_order
    #      @products = @products.order(sort_attribute => sort_order)
    #    elsif sort_attribute
    #      @products = @products.order(sort_attribute)
    #    else
    #      @products = @produects.order(:id)
    #    end

# less spicific goes second in "if, elsif" condition.

    render 'index.json.jb'
  end

  def create
   @product = Product.new(
                        name:        params[:name],
                        price:       params[:price],
                        description: params[:description],
                        supplier_id: params[:supplier_id]
                        )
    if @product.save
      render 'show.json.jb'
    else
      render json: {errors: @product.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def show
    @product = Product.find(params[:id])
    render 'show.json.jb'
  end

  def update
    @product = Product.find(params[:id])

    @product.name        = params[:name] || @product.name
    @product.price       = params[:price] || @product.price
    @product.description = params[:description] || @product.description

    if @product.save
      render 'show.json,jb'
    else
      render json: {errors: @product.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    render json:{message: "Successfully Destroy!"}
  end
end

# a behavior is what a class does. That would be a method.
# attribute is describing what an object is, in Rails it is the data base.
# mini_capstone, contact, cookbook
# a good code can be understand a year from now.
# should be easily figure out: 1, 0, -1
# defind all variables on the top of the method.