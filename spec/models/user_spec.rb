require 'rails_helper'

RSpec.describe User, type: :model do
  it { should have_many :orders}
  it { is_expected.to callback(:set_admin).before(:validation) }
end
