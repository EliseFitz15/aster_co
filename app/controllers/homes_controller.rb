class HomesController < ApplicationController
  def about
  end

  def events
    @upcoming_events = Event.where("start_date > ?", Date.yesterday)
    @past_events = Event.where("start_date <= ?", Date.yesterday)
  end

  def login
  end

  def welcome
    @photos = []
    @data = HTTParty.get('https://api.instagram.com/v1/users/' + ENV['IG_USER'] +   '/media/recent/?access_token=' + ENV['ACCESS_TOKEN'] + '')
    unless @data["data"].nil?
      3.times do |i|
        @photos << @data["data"][i]["images"]["low_resolution"]["url"]
      end
    end
  end

  def placeholdevents
  end

  def placeholdcollection
  end
end
