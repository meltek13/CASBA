class MembersController < ApplicationController
    
    def index
      @user = User.all
      @current_user = current_user
      render json: { users: @user, current_user: @current_user }
    end

    def show
      @user = User.find(params[:id])
      render json: @user
    end

    def create
    end
  
    def edit
      @user = User.find(params[:id])
    end

      # PATCH/PUT /annoucements/1
    def update
      @user = User.find(params[:id])
      if @user.update(user_params)
        render json: @user
      else
        render json: @user.errors, status: :unprocessable_entity
      end
    end
    
    def destroy
      @user = User.find(params[:id])
      render json: {user: @user }
      @user.destroy
    end 

    private

    # Only allow a list of trusted parameters through.
    def user_params
      params.permit(:id ,:email, :avatar)
    end
  end