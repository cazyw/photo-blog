
class PostsController < ApplicationController
    before_action :authenticate_user!, :except => [:show, :index]
    before_action :set_post, only: [:show, :edit, :update, :destroy]
    before_action :is_user_post, only: [:edit, :update, :destroy]
    require 'pry'
    
    
    def index
        @posts = Post.order(created_at: :desc).all
    end

    def show
        if @post.nil?
            redirect_to posts_path
        end
    end

    def new
        @post = current_user.posts.build
    end

    def create
        @post = current_user.posts.build(post_params)
        if @post.save
            flash[:success] = "Image blog post created"
            redirect_to posts_path
        else
            flash[:error] = "Warning: required fields not completed!"
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
            flash[:error] = "Warning: something's gone teribly wrong and it didn't update!"
            render :edit
        end
    end

    def destroy
        if @post.destroy
            flash[:success] = "Post deleted!"
            redirect_to posts_path
        else
            flash[:error] = "Warning: the post wasn't deleted!"
        end
    end

    private
    
        def post_params
            params.require(:post).permit(:image, :caption, :location, :blog, :user_id)
        end

        def set_post
            @post = Post.find_by(id: params[:id])
            
        end

        def is_user_post
            unless current_user == @post.user
              flash[:alert] = "That post doesn't belong to you!"
              redirect_to root_path
            end
        end
end
