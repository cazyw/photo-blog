class PostsController < ApplicationController
    before_action :authenticate_user!, :except => [:show, :index]
    before_action :set_post, only: [:show, :edit, :update, :destroy]
    

    def index
        @posts = Post.all
    end

    def show
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
            flash[:alert] = "Warning: required fields not completed!"
            render :new
        end

    end

    def edit
    end

    def update
        @post.update(post_params)
        if @post.save
            flash[:success] = "Blog post updated!"
            redirect_to post_path
        else
            flash[:alert] = "Warning: something's gone teribly wrong and it didn't update!"
            render :edit
        end
    end

    def destroy
        if @post.destroy
            flash[:success] = "Post deleted!"
            redirect_to posts_path
        else
            flash[:alert] = "Warning: the post wasn't deleted!"
        end
    end

    private
    
        def post_params
            params.require(:post).permit(:image, :caption, :location, :blog)
        end

        def set_post
            @post = Post.find(params[:id])
        end
end
