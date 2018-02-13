require 'rails_helper'

feature 'Create Order', %q{
  I as Sign in user
  can create order with dish
} do
  given(:user) { create(:user) }
  given(:menu) { create(:menu) }
  given(:type) { create(:type) }
  given(:dish) { create(:dish, type_id: type.id) }

  scenario 'Login user create order' do
    sign_in(user)
    visit menu_path(menu)
    find_field('First').find('option[1]').text
    click_button 'Create Order'

    expect(page).to have_content 'Order was successfully created.'

    end
  scenario 'Login user create invalid order' do
    sign_in(user)
    visit menu_path(menu)
    click_button 'Create Order'

    expect(page).to have_content 'Select at least one item.'

  end
  scenario 'Guest user can`t create order' do
    visit menu_path(menu)
    find_field('First').find('option[1]').text
    click_button 'Create Order'

    expect(page).to have_content 'You need to sign in or sign up before continuing.'

  end
end