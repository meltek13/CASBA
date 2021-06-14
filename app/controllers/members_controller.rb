class MembersController < ApplicationController
    
    def index
      @user = User.all
      @current_user = current_user
      render json: { users: @user, current_user: @current_user }
    end
    
    def destroy
      @user = User.find(params[:id])
      render json: {user: @user }
      @user.destroy
    end 
  end