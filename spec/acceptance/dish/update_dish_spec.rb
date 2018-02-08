require 'rails_helper'

feature 'Update dish', %q{
  I as login user (admin) can edit dishes
} do
  scenario 'Successful edit dish ' do
    dish = create(:dish)
    visit root_path
    click_link 'edit dish'
    fill_in 'Name', with: 'Pizza A2'
    click_button 'Update Dish'

    expect(page).to have_content 'Dish was successfully updated.'
    end
  scenario 'failed edit dish ' do
    dish = create(:dish)
    visit root_path
    click_link 'edit dish'
    fill_in 'Name', with: nil
    click_button 'Update Dish'

    expect(page).to have_content 'Name can\'t be blank'
  end
end