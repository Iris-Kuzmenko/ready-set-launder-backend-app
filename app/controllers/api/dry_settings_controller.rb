class Api::DrySettingsController < ApplicationController
  before_action :authenticate_user

  # what if I want to add more wash_settings or dry_settings? should I do a create or destroy just for admin? 

  def index
    @dry_settings = DrySetting.all
    render "index.json.jb"
  end
end
