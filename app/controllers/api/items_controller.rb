class Api::ItemsController < ApplicationController
  # before_action :authenticate_user

  #   def index
  #     @items = Item.all
  #     render "index.json.jb"
  #   end

  #   def create
  #     @item = Item.new(
  #       name: params[:name],
  #       user_id: current_user.id,
  #       wash_setting_id: params[:wash_setting_id],
  #       dry_setting_id: params[:dry_setting_id],
  #       category_id: params[:category_id],
  #     )
  #     if @item.save
  #       render "show.json.jb"
  #     else
  #       render json: { message: @item.errors.full_messages }, status: :unprocessable_entity
  #     end
  #   end

  #   def show
  #     @item = Item.find_by(id: params[:id])
  #     render "show.json.jb"
  #   end

  #   def update
  #     @item = Item.find_by(id: params[:id])
  #     @item.name =
  #     @item.wash_setting_id =
  #     @item.dry_setting_id =
  #     @item.category_id =
  #   end

  #   # def destroy
  #   # end
  # end
end
