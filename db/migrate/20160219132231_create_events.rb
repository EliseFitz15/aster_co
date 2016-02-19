class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title, null: false
      t.string :details
      t.date :start_date
      t.string :location_name, null: false
      t.string :address
      t.string :zip_code
      
      t.timestamps null: false
    end
  end
end
