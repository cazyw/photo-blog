require 'rails_helper.rb'

feature 'Creating a new user' do
    background do
      visit '/'
      click_link 'Register'
    end
    scenario 'can create a new user via the index page' do
      fill_in 'User name', with: 'user1'
      fill_in 'Email', with: 'user1@gmail.com'
      fill_in 'Password', with: '123456', match: :first
      fill_in 'Password confirmation',  with: '123456'
      click_button 'Sign up'
      expect(page).to have_content('Welcome!')
    end

    scenario 'requires a user name to successfully create an account' do
      fill_in 'Email', with: 'user2@gmail.com'
      fill_in 'Password', with: '123456', match: :first
      fill_in 'Password confirmation', with: '123456'
  
      click_button 'Sign up'
      expect(page).to have_content("can't be blank")
    end

    scenario 'requires a user name to be more than 4 characters' do
      fill_in 'User name', with: 'a'
      fill_in 'Email', with: 'user3@gmail.com'
      fill_in 'Password', with: '123456', match: :first
      fill_in 'Password confirmation', with: '123456'
  
      click_button 'Sign up'
      expect(page).to have_content('minimum is 4 characters')
    end
  end