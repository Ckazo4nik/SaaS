class Api::V1::OrdersController < ApplicationController
  respond_to :json
  def info_order_for_today
    menu = Menu.find_by(date: Date.today)
    orders = Order.where(menu_id: menu.id)
    respond_with orders
  end
end