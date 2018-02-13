require 'rails_helper'

RSpec.describe DishesMenu, type: :model do
  it { should belong_to :dish}
  it { should belong_to :menu}
end
