class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)

    if @product.save
      redirect_to product_path(@product)
      flash[:notice] = "Product added"
    else
      flash[:error] = @product.errors.full_messages.join(". ")
      render :new
    end
  end

  private

  def product_params
    params.require(:product).permit(:name, :description, :price)
  end
end
