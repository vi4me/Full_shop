class HomeController < ApplicationController
	
  def index
  	@products = Product.where({'favorit' => true})
  end

  def show
    @product = Product.find(params[:id])
  end
end
