require 'rails_helper.rb'

feature 'Editing posts' do
    background do
        post = create(:post)
        visit '/'
        find(:xpath, "//a[contains(@href,'posts/1')]").click
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