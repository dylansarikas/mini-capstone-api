class AddsAdminToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :admin, :integer
  end
end
