class AddOibToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :OIB, :string
  end
end