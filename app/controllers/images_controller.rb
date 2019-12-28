class ImagesController < ApplicationController
  
  def new
    @image = @product.images.new
    @image = @category.images.new
    @image = @user.images.new
  end

  def create
    @product.images.create(image_params)
    @category.images.create(image_params)
    @user.images.create(image_params)
  end


  private

  def image_params
    params.require(:image).permit(:file)
  end

end
