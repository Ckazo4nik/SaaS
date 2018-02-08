require 'rails_helper'

feature 'Delete dish', %q{
  Admin can delete dish
} do
  scenario 'Admin successful delete dish' do
    user = create :user
    sign_in user

    dish = create :dish

    visit root_path
    click_link 'delete dish'

    expect(page).to  have_content 'Dish was successfully destroyed.'
    expect(page).to_not  have_content "#{dish.name}"
  end
end