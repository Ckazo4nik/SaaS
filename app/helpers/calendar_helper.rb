module CalendarHelper
  include ActionView::Helpers::OutputSafetyHelper
  include ActionView::Helpers::TagHelper
  include ActionView::Context
  def calendar(date = Date.today, &block)
    Calendar.new(self, date, block).table
  end
end

