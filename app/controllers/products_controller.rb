class ProductsController < ApplicationController
  before_action :set_category

  def index
    @product = Product.all
    @products = @category.products
    @q = Product.ransack(params[:q])
    @products = @q.result.order('created_at DESC')

  end

  def show
    @product = Product.find(params[:id])
    @comments = @product.comments.all
    @comment = @product.comments.build
  end
  
 
  private

    def set_category
      @category = Category.find(params[:category_id])
    end

    def product_params
      params.require(:product).permit(:price, :name, :pr_description, :favorit, images_attributes: [:id, :file, :_destroy])
    end
end

 