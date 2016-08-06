class HomesController < ApplicationController
  http_basic_authenticate_with name: ENV['USERNAME'], password: ENV['PASSWORD'], only: [:dashboard]

  def about
  end

  def login
  end

  def welcome
  end

  def dashboard
  end

  def placeholdcollection
  end
end
