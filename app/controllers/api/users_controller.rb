class Api::UsersController < ApplicationController

  before_action :authenticate_user, except: [:create]

  def create
    @user = User.new(
      username: params[:username],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation],
    )
    if @user.save
      render "show.json.jb"
    else
      render json: { errors: @user.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def show
    @user = User.find_by(id: params[:id])
    if @user.id == current_user.id
      render "show.json.jb"
    end
  end

  def update
    @user = User.find_by(id: params[:id])
    if @user.id == current_user.id
      @user.username = params[:username] || @user.username
      @user.email = params[:email] || @user.email
      # if @user.authenticate(params[:current_password])
      #   @user.password = params[:new_password]
      # end
      if @user.save
        render "show.json.jb"
      else
        render json: { errors: @user.errors.full_messages }, status: :unprocessable_entity
      end
    else
      render json: { message: "Can't update items belonging to another user!" }, status: :forbidden
    end
  end

  def destroy
    @user = User.find_by(id: params[:id])
    if @user.id == current_user.id
      @user.destroy
      render json: { message: "User deleted!" }
    else
      render json: {}, status: :forbidden
    end
  end
  
end
