class HideProductController < ApplicationController
  def update
    @product = Product.find(params[:id])
    @product.toggle!(:hidden)
    redirect_to product_path(@product)
  end
end
