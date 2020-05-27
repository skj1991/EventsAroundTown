class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :event_url
      t.string :info
      t.date :date
      t.time :time
      t.string :venue
      t.text :address 
      t.date :sales_start 
      t.date :sales_end 
      t.float :price_min
      t.float :price_max
      t.string :images
      t.integer :city_id
    end
  end
end
