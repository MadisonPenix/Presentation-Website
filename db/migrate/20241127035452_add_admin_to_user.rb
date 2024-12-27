class AddAdminToUser < ActiveRecord::Migration[8.0]
  def change
    add_column :users, :admin, :boolean, null: false
  end
end
