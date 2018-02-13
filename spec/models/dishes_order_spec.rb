require 'rails_helper'

RSpec.describe DishesOrder, type: :model do
  it { should belong_to :dish}
  it { should belong_to :order}
end
