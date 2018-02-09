class CreateDishesMenus < ActiveRecord::Migration[5.1]
  def change
    create_table :dishes_menus do |t|
      t.belongs_to :dish, index: true
      t.belongs_to :menu, index: true
      t.timestamps
    end
  end
end
