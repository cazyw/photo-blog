require 'rails_helper.rb'

feature 'Authenticating a user' do
    background '' do
        user = create(:user)
    end
    scenario 'Can log in' do
        visit '/'
        expect(page).to_not have_content('New Post')
        click_link 'Login'
        fill_in 'Email', with: 'xo@gmail.com'
        fill_in 'Password', with: 'foobar'
        click_button 'Log in'
        expect(page).to have_content('Signed in successfully')
        expect(page).to_not have_content('Register')
        expect(page).to have_content('Logout')
    end

    scenario 'can log out once logged in' do
        visit '/'
        click_link 'Login'
        fill_in 'Email', with: 'xo@gmail.com'
        fill_in 'Password', with: 'foobar'
        click_button 'Log in'
        click_link 'Logout'
        expect(page).to have_content('Signed out successfully')
    end

    scenario 'cannot create a new post without logging in' do
        visit new_post_path
        expect(page).to have_content('You need to sign in or sign up before continuing')
    end
end