class CreateDishesOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :dishes_orders do |t|
      t.belongs_to :dish, index: true
      t.belongs_to :order, index: true
      t.timestamps
    end
  end
end
