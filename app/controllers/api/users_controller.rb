class Api::UsersController < ApplicationController
  def create
    @user = User.new(
      username: params[:username],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation],
      admin: params[:admin],
    )
    if @user.save
      render json: { message: "User created successfully" }, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
  end

#   # def show
#   #   @user = User.find_by(params[:id])
#   #   if @user.save
#   #     render "show.json.jb"
#   #   else
#   #     render json: { errors: user.errors.full_messages }, status: :bad_request
#   #   end
#   # end

#   def update
#   end

#   def destroy
#   end
# end
