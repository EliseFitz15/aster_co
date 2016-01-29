class HomesController < ApplicationController
  def index
    @products = Product.all
  end
end
