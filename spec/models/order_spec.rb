require 'rails_helper'

RSpec.describe Order, type: :model do
  it { should belong_to :user}
  it { should belong_to :menu}
  it { should have_and_belong_to_many :dishes}

end
