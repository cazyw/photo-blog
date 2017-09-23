class UsersController < ApplicationController
    before_action :authenticate_user!
    before_action :user_signed_in?
    # before_action :is_current_user?, only: [:show]

    def index
        @users = User.all
    end

    def show
        @user = User.find(params[:id])
    end

    def posts
        @user = User.find(params[:id])
        @posts = @user.posts
    end

    def edit
    end

    def update
    end

    private
        def is_current_user?
            unless current_user == User.find(params[:id])
            flash[:alert] = "Warning: You're trying to access another user's page!"
            redirect_to root_path
            end
        end
end
