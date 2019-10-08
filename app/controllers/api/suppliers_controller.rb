class Api::SuppliersController < ApplicationController
  def index
    @suppliers = Suppliers.all
    render 'index.json.jb'
  end
end
