class UsersController < ApplicationController
    include UsersHelper
    
    def index
        @users = User.all
    end

    def show
        @user = User.find(params[:id])
    end

    def new
        @user = User.new
    end

    def create
        @user = User.new
        @user.username = params[:user][:username]
        @user.password = params[:password]
        @user.email = params[:user][:email]
        @user.save

        redirect_to user_path(@user)
    end

    def update
        @user = User.find(params[:id])
        @user.update(user_params)

        flash.notice = "Account information updated for '#{@user.username}'"
        redirect_to user_path(@user)
    end

    def edit
        @user = User.find([params[:id]])
    end


end
