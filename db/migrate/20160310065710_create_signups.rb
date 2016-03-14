class CreateSignups < ActiveRecord::Migration
  def change
    create_table :signups do |t|
      t.string :user_name
      t.string :password
      t.string :email
      t.string :phone_no

      t.timestamps null: false
    end
  end
end
