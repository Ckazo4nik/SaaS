class DishesController < ApplicationController
  before_action :find_dish, only: [:show, :edit, :update]
  def index
    respond_with @dishes = Dish.all
  end
  def show
  end
  def edit

  end
  def new
    respond_with@dish = Dish.new
  end
  def create
    @dish = Dish.new(dish_params)
    flash[:notice] = 'You dish was successful create!.' if @dish.save
    respond_with@dish, location: root_path
  end
  def update
    @dish.update(dish_params)
    respond_with(@dish)
  end

  private

  def find_dish
    @dish = Dish.find(params[:id])
  end
  def dish_params
    params.require(:dish).permit(:name, :price)
  end
end