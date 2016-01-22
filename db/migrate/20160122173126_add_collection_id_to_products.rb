class AddCollectionIdToProducts < ActiveRecord::Migration
  def change
    add_column :products, :collection_id, :integer
  end
end
