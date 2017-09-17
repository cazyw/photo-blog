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
        if @post.save
            flash[:success] = "Image blog post created"
            redirect_to @post
        else
            flash[:alert] = "Warning: no image was added!"
            render :new
        end

    end

    private
    
        def post_params
            params.require(:post).permit(:image, :caption, :location, :blog)
        end
end
