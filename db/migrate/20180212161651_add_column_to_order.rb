class AddColumnToOrder < ActiveRecord::Migration[5.1]
  def change
    add_column :orders, :first_dish, :integer
    add_column :orders, :main_dish, :integer
    add_column :orders, :drink, :integer
  end
end
