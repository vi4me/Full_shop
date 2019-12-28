class CategoriesController < ApplicationController
  
  def index
    @categories = Category.order('created_at DESC')
  end

  def show
    @category = Category.find(params[:id])
  end
  

  private

  def category_params
    params.require(:category).permit(:title, :body, images_attributes: [:id, :file, :_destroy])
  end
end