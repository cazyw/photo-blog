require 'rails_helper.rb'

feature 'Can view individual posts' do
    scenario 'can click and view individual posts' do
        post = create(:post)
        visit '/'
        find(:xpath, "//a[contains(@href,'posts/1')]").click
        expect(page.current_path).to eq(post_path(post))
    end
end