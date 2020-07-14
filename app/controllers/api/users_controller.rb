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
      render json: { message: "User created successfully" }, status: :created
    else
      render json: { errors: @user.errors.full_messages }, status: :bad_request
    end
  end

  def show
    @user = User.find_by(id: params[:id])
    if @user.id == current_user.id
      render "show.json.jb"
    end
  end

  def update
    @user = User.find_by(id: param.ids[:id])
    if @user.id == current_user.id
      @user.username = params[:username] || @user.username
      @user.email = params[:email] || @user.email
      # if params[:password]
      #   @user.password = params[:password]
      #   @user.password_confirmation = params[:password_confirmation]
      # end
    end
    if @user.save
      render "show.json.jb"
    else
      render json: { message: "Not updated!" }, status: :bad_request
    end
  end

  def destroy
    @user = User.find_by(id: params[:id])
    if @user == current_user
      @user.destroy
      render json: { message: "User destroyed!" }
    else
      render json: { message: "Unable to destroy another user!" }
    end
  end
end
