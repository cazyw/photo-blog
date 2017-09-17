require 'rails_helper.rb'

feature 'Displaying posts' do
    scenario 'the index displays created post information' do
        post_one = create(:post, caption: "First post", location: "Sydney", blog: "Blah")
        post_two = create(:post, caption: "Second post", location: "Sydney", blog: "Blah")
        post_three = create(:post, caption: "Third post", location: "Sydney", blog: "Blah")
        
        visit '/'
        expect(page).to have_content('First post')
        expect(page).to have_content('Second post')
        expect(page).to have_content('Third post')
        expect(page).to have_css("img[src*='circa.jpg']")
    end

end

feature 'Viewing a post' do
    scenario 'can click and view individual posts' do
        post = create(:post)
        visit '/'
        find(:xpath, "//a[contains(@href,'posts/1')]").click
        expect(page.current_path).to eq(post_path(post))
    end
end
