class Event < ActiveRecord::Base
  validates :title, presence: true
  validates :details, presence: true
  validates :start_date, presence: true
  validates :location_name, presence: true
  validates :address, presence: true
  validates :zip_code, presence: true
  validates :zip_code, length: { is: 5 }
  validates :zip_code, numericality: { only_integer: true }
end
