class PostsController < ApplicationController

    def index
    end

    def show
        @post = Post.find(params[:id])
    end

    def new
        @post = Post.new
    end

    def create
        @post = Post.create(post_params)
        redirect_to @post
    end

    private
    
        def post_params
            params.require(:post).permit(:image, :caption, :location, :blog)
        end
end
