class CreateTheatres < ActiveRecord::Migration
  def change
    create_table :theatres do |t|
      t.string :name
      t.string :owner
      t.integer :movie_id
      

      t.timestamps null: false
    end
  end
end
