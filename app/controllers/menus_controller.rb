class MenusController < ApplicationController
  respond_to :html
  before_action :set_menu, only: :show
  before_action :set_menu_today, only: :menu_today
  before_action :dishes, only: [:show, :menu_today]
  before_action :new_order, only: [:show, :menu_today]
  before_action :show_orders, only: [:show, :menu_today]
  before_action :calculate_price, only: :show
  # before_action :show, only: :menu_today
  def show
    respond_with @order
  end

  def menu_today

    respond_with @order

  end

  private

  def dishes
    @first_dishes = Dish.first_dishes(@menu)
    @second_dishes = Dish.main_dishes(@menu)
    @drink_dishes = Dish.drink(@menu)
  end
  def set_menu
    @menu = Menu.find_by(id: params[:id])
  end

  def new_order
    @order = Order.new
  end

  def show_orders
    @orders = Order.where(menu_id: @menu.id)
  end

  def calculate_price
    @total = @orders.collect { |f| f.price}.sum
  end
  def set_menu_today
    @menu = Menu.find_by(date: "#{ Date.today}")
  end
end