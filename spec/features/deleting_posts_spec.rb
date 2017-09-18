require 'rails_helper.rb'

feature 'Deleting posts' do
    background do
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