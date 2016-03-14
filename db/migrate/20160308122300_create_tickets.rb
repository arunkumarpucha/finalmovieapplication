class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.integer :theatre_id
      t.integer :customer_id
      t.integer :seat_no
      t.integer :price

      t.timestamps null: false
    end
  end
end
