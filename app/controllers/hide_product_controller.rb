class HideProductController < ApplicationController
  def update
    @product = Product.find(params[:id])
    @product.toggle!(:hidden)
    redirect_to '/products_dashboard'
  end
end
