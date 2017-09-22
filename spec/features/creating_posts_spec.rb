require 'rails_helper.rb'

feature 'Creating posts' do
    background '' do
        user = create(:user)
        visit '/'
        click_link 'Login'
        fill_in 'Email', with: 'xo@gmail.com'
        fill_in 'Password', with: 'foobar'
        click_button 'Log in'
    end
    scenario 'can create a post' do
        visit '/'
        click_link 'New Post'
        attach_file('Image', "spec/files/images/circa.jpg")
        fill_in 'Caption', with: 'yummo #foodart'
        fill_in 'Location', with: 'Circa'
        fill_in 'Blog', with: 'This was a delicious brunch at Circa. Waited for over an hour but it was definitely worth the wait. Not only looks fantastic but wow, delicious!'
        click_button 'Create Post'
        expect(page).to have_content('#foodart')
        expect(page).to have_css("img[src*='circa.jpg']")
    end

    scenario 'needs an image to create a post' do
        visit '/'
        click_link 'New Post'
        fill_in 'Caption', with: 'yummo #foodart'
        fill_in 'Location', with: 'Circa'
        fill_in 'Blog', with: 'This was a delicious brunch at Circa. Waited for over an hour but it was definitely worth the wait. Not only looks fantastic but wow, delicious!'
        click_button 'Create Post'
        expect(page).to have_content('Warning: no image was added!')
    end
end