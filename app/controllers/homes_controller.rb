class HomesController < ApplicationController
  def index
    @products = Product.all
  end

  def about
  end

  def events
    @upcoming_events = Event.where("start_date > ?", Date.yesterday)
    @past_events = Event.where("start_date <= ?", Date.yesterday)
  end

  def login
  end
end
