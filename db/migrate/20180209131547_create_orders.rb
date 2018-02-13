class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.belongs_to :user
      t.belongs_to :menu
      t.float :price

      t.timestamps
    end
  end
end
