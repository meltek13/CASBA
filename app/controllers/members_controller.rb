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
      @user = User.new(user_params)
      if @user.save
        
        render json: {user: @user}, status: :created, location: @user
      else
        render json: @user.errors, status: :unprocessable_entity
      end
    end
  
    def edit
      @user = User.find(params[:id])
    end


      # PATCH/PUT /members/1
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
      render json: {user: User.all}
      @user.destroy
    end 

    private
    # Only allow a list of trusted parameters through.
    def user_params
      params.permit(:id ,:email, :password, :nickname, :status, :avatar, :flat_picture, :flatsharing_id, :member, :user)
    end
  
    def set_user
      @user = User.find(params[:id])
    end
  
  end