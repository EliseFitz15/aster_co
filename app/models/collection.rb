class Collection < ActiveRecord::Base
  has_many :products
  
  validates :title, presence: true
  validates :description, presence: true
end
