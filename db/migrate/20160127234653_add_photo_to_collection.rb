class AddPhotoToCollection < ActiveRecord::Migration
  def change
    add_column :collections, :collection_photo, :string
  end
end
