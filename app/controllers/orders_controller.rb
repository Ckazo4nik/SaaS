class OrdersController < ApplicationController
  before_action :authenticate_user!, only: :create
  respond_to :html
  def index
    @orders = Order.where(user_id: current_user.id)
    respond_with(@orders)
  end

  def new
    @order = Order.new
    respond_with @order
  end
  def show
    @order = Order.find(params[:id])
    respond_with @order
  end
  def create
    @order = Order.create(order_params.merge(user_id: current_user.id, menu_id: params[:menu_id]))
    if @order.save
      respond_with @order, location: @order
    else
      redirect_to  menu_path(params[:menu_id]), notice: 'Select at least one item.'
    end
  end

  private

  def order_params
    params.require(:order).permit(:first_dish, :main_dish,:drink,
                                  :menu_id, :user_id, :dish_id,
                                  :price, :dish_ids)
  end



end