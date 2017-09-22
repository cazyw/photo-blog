require 'rails_helper.rb'

feature 'Deleting posts' do
    background do
        user = create(:user)
        visit '/'
        click_link 'Login'
        fill_in 'Email', with: 'xo@gmail.com'
        fill_in 'Password', with: 'foobar'
        click_button 'Log in'
        post = create(:post, caption: 'Test post')
        visit '/'
        find(:xpath, "//a[contains(@href, 'posts/1')]").click
        click_link 'Edit Post'
    end
    scenario 'can delete a post' do
        click_link 'Delete Post'
        expect(page.current_path).to eq('/posts')
        expect(page).to have_content("Post deleted")
        expect(page).to_not have_content("Test post")
    end
end