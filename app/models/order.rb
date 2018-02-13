class Order < ApplicationRecord
  belongs_to :user
  belongs_to :menu
  has_and_belongs_to_many :dishes
  after_create :create_order
  validate :check_dish, on: :create






  private

  def check_dish
    if !first_dish.present? && !main_dish.present? && !drink.present?
      errors.add(:dish_id, "not present")
    end
  end

  def create_order
    dishes = [
        first_dish,
        main_dish,
        drink
    ]
    some_method(dishes)
  end

  def some_method(dishes)
    dishes.each do |dish|
      @dish = Dish.find_by(id: dish)
      if @dish
        order_items = DishesOrder.new
        order_items.order_id = id
        order_items.dish_id = @dish.id
        order_items.save
        self.price = price + @dish.price
      end
    end
  end
end
