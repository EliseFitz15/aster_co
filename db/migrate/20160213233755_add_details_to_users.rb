class AddDetailsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string, null: false
    add_column :users, :image_url, :string, null: false
    add_column :users, :url, :string, null: false
    add_column :users, :email, :string
  end
end
