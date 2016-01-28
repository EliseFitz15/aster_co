class Collection < ActiveRecord::Base
  has_many :products

  validates :title, presence: true
  validates :description, presence: true
  mount_uploader :collection_photo, CollectionPhotoUploader
end
