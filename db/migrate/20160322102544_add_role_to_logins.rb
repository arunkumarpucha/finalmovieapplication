class AddRoleToLogins < ActiveRecord::Migration
  def change
    add_column :logins, :role, :string
  end
end
