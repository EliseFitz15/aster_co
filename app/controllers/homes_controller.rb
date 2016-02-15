class HomesController < ApplicationController
  def index
    @products = Product.all
  end

  def about
  end

  def contact
  end

  def login
  end
end
