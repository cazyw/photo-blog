require 'rails_helper'

RSpec.describe PostsController, type: :controller do

    describe "GET index" do
        it "gets all the posts" do
            user = create(:user, :id => 3)
            post1 = create(:post, :id => 7, :user_id => user.id)
            post2 = create(:post, :id => 6, :user_id => user.id)
            post3 = create(:post, :id => 5, :user_id => user.id)
            get :index
            expect(response).to render_template :index
            expect(assigns(:posts).size).to eq(3)
            expect(Post.find(7)).to eq(post1)
            expect(Post.find(6)).to eq(post2)
            expect(Post.find(5)).to eq(post3)
        end
    end

    describe "GET show" do 
        it "shows a post" do
            user = create(:user, :id => 3)
            post = create(:post, :id => 7, :user_id => user.id)
            get :show, params: {id: 7}
            expect(response).to render_template :show
        end

        it "redirects to index if post doesn't exist" do
            get :show, params: {id: 7}
            expect(response).to redirect_to posts_path
        end
 

    end
end
