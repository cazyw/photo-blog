class PostsController < ApplicationController

    def index
        @posts = Post.all
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
            flash[:alert] = "Warning: required fields not completed!"
            render :new
        end

    end

    def edit
        @post = Post.find(params[:id])
    end

    def update
        @post = Post.find(params[:id])
        @post.update(post_params)
        if @post.save
            flash[:success] = "Blog post updated!"
            redirect_to(post_path(@post))
        else
            flash[:alert] = "Warning: something's gone teribly wrong!"
            render :edit
        end
    end

    def destroy
        @post = Post.find(params[:id])
        @post.destroy
        flash[:success] = "Post deleted!"
        redirect_to posts_path
    end

    private
    
        def post_params
            params.require(:post).permit(:image, :caption, :location, :blog)
        end
end
