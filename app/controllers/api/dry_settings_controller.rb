class Api::DrySettingsController < ApplicationController
  before_action :authenticate_user

  def index
    @dry_settings = DrySetting.all
    render "index.json.jb"
  end
end
