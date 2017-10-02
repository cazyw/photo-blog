require 'rails_helper.rb'

feature 'Editing posts' do
    background do
        user = create(:user)
        visit '/'
        click_link 'Login'
        fill_in 'Email', with: 'xo@gmail.com'
        fill_in 'Password', with: 'foobar'
        click_button 'Log in'
        post = create(:post)
        visit '/'
        first(:xpath, "//a[contains(@href,'posts/1')]").click
        click_link 'Edit Post'
    end
    scenario 'can edit a post' do
        fill_in 'Caption', with: 'Ooooh that is goooood!'
        click_button 'Update Post'
        expect(page).to have_content('Blog post updated!')
        expect(page).to have_content('Ooooh that is goooood!')
    end

    scenario 'no image raises an error' do
        attach_file('Image', "spec/files/images/blank.txt")
        click_button 'Update Post'
        expect(page).to have_content("Warning: something's gone teribly wrong and it didn't update!")
    end
end