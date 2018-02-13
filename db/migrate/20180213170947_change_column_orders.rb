class ChangeColumnOrders < ActiveRecord::Migration[5.1]
  def change
    change_column :orders, :price, :integer, default: 0
  end
end
