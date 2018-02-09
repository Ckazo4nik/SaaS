class MenusController < ApplicationController
  def show
    @menu = Menu.find(params[:id])
    @first_dishes = @menu.dishes.where(type_id: 1)
    @second_dishes = @menu.dishes.where(type_id: 2)
    @drink_dishes = @menu.dishes.where(type_id: 3)
  end
end