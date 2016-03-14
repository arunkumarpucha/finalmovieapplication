class CreateTheatreDetails < ActiveRecord::Migration
  def change
    create_table :theatre_details do |t|
      t.integer :theatre_id
      t.text :address
      t.integer :seat_capacity

      t.timestamps null: false
    end
  end
end
