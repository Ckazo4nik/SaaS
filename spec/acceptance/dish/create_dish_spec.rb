require 'rails_helper'

feature 'create dish',%q{
  User can create dish in a SaaS
} do
  scenario 'Authorization User create dish valid input text' do
    user = create(:user)
    sign_in(user)
    visit root_path

    click_link 'Create dish'
    fill_in 'Name', with: 'Pizzza'
    fill_in 'Price', with: '14.50'
    click_button 'Create'

    expect(page).to have_content 'You dish was successful create!'
    end
  scenario 'Authorization User create dish not valid input text' do
    user = create(:user)
    sign_in(user)
    visit root_path

    click_link 'Create dish'
    fill_in 'Name', with: nil
    fill_in 'Price', with: '14.50'
    click_button 'Create'

    expect(page).to have_content 'Name can\'t be blank'
    end
  scenario 'Authorization User create dish not valid input text' do
    user = create(:user)
    sign_in(user)
    visit root_path

    click_link 'Create dish'
    fill_in 'Name', with: 'Pizzaa'
    fill_in 'Price', with: nil
    click_button 'Create'

    expect(page).to have_content 'Price can\'t be blank'
    end
  scenario 'Authorization User create dish not valid input text' do
    user = create(:user)
    sign_in(user)
    visit root_path

    click_link 'Create dish'
    fill_in 'Name', with: nil
    fill_in 'Price', with: nil
    click_button 'Create'

    expect(page).to have_content 'Name can\'t be blank Price can\'t be blank'
  end

  scenario 'no Authorization User create dish' do
    visit root_path

    expect(page).to_not have_content 'Create dish'
  end

end