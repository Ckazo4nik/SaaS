require 'rails_helper'

RSpec.describe Dish, type: :model do
  it { should validate_presence_of :name }
  it { should validate_presence_of :price }
  it { should have_and_belong_to_many  :menus }
  it { should belong_to  :type }
end
