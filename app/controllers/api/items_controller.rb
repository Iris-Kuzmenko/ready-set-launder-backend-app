class Api::ItemsController < ApplicationController
  def index
    @items = current_user.items
    render "index.json.jb"
  end

  def create
    @item = Item.new(
      name: params[:name],
      user_id: current_user.id,
      wash_setting_id: params[:wash_setting_id],
      dry_setting_id: params[:dry_setting_id],
      category_id: params[:category_id],
    )
    if @item.save
      render "show.json.jb"
    else
      render json: { message: @item.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def show
    @item = Item.find_by(id: params[:id])
    if @item.user_id == current_user.id
      render "show.json.jb"
    else
      render json: { message: "Not this user's item!" }
    end
  end

  def update
    @item = Item.find_by(id: params[:id])
    if @item.user_id == current_user.id
      @item.name = params[:name] || @item.name
      @item.wash_setting_id = params[:wash_setting_id] || @item.wash_setting_id
      @item.dry_setting_id = params[:dry_setting_id] || @item.dry_setting_id
      @item.category_id = params[:category_id] || @item.category_id
      if @item.save
        render "show.json.jb"
      else
        render json: { message: @item.errors.full_messages }, status: :unprocessable_entity
      end
    else
      render json: { message: "Can't update another user's items!" }
    end
  end

  def destroy
    @item = Item.find_by(id: params[:id])
    if @item.user_id == current_user.id
      @item.destroy
      render json: { message: "Item destroyed!" }
    end
  end
end
