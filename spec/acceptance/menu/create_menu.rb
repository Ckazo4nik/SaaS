require 'rails_helper'

feature 'Create menu', %q{
  I as Admin this app
  can create menu
} do
  scenario 'Successful create menu' do
    user = create :user.merge admin: true

    visit new_menu_path
    fill_in 'Date', with: '2018-02-08'
    fill_in 'First', with: 'Borsch'
    fill_in 'Second', with: 'Potato'
    fill_in 'Drink', with: 'CocaKola'

  end
end