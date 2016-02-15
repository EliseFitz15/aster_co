class HomesController < ApplicationController
  def index
    @products = Product.all
  end

  def about
  end

  def events
  end

  def login
  end
end
