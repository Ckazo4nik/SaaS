class HomesController < ApplicationController
  def index
    respond_with(@dishes = Dish.all)
  end
end