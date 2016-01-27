class ProductsController < ApplicationController
  def index
    @products = Product.where(hidden: false)
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
      flash[:notice] = "Product added"
      redirect_to product_path(@product)
    else
      flash[:error] = @product.errors.full_messages.join(". ")
      render :new
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update_attributes(product_params)
      flash[:notice] = "Updates to product made successfully."
      redirect_to product_path(@product)
    else
      flash[:error] = @product.errors.full_messages.join(". ")
      render :edit
    end
  end

  private

  def product_params
    params.require(:product).permit(:name, :description, :price, :collection_id)
  end
end
