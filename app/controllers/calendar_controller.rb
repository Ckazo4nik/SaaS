class CalendarController < ApplicationController
  respond_to :html
  def show
    @date = params[:date] ? Date.parse(params[:date]) : Date.today
  end
end
