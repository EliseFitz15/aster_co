class ChangeProductPhotoToMultiPhoto < ActiveRecord::Migration
  def up
    remove_column :products, :product_photo, :string
    add_column :products, :product_photos, :text, array: true, default: []
  end

  def down
    remove_column :products, :product_photos, :text, array: true, default: []
    add_column :products, :product_photo, :string
  end
end
