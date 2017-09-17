require 'rails_helper.rb'

feature 'Index displays a list of posts' do
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