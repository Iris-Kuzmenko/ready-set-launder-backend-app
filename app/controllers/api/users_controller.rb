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
    @user = current_user
    render "show.json.jb"
  end

  def update
    @user = current_user
    @user.username = params[:username] || @user.username
    @user.email = params[:email] || @user.email
    if @user.save
      render "show.json.jb"
    else
      render json: { errors: @user.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @user = current_user
    @user.destroy
    render json: { message: "User deleted!" }
  end
end
