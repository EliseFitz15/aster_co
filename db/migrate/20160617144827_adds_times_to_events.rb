class AddsTimesToEvents < ActiveRecord::Migration
  def change
    add_column :events, :event_times, :string
    rename_column :events, :zip_code, :event_link
  end
end
