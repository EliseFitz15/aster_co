class Product < ActiveRecord::Base
  belongs_to :collection
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :description, presence: true
  validates :price, presence: true, numericality: true
end
