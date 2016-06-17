class Event < ActiveRecord::Base
  validates :title, presence: true
  validates :location_name, presence: true
end
