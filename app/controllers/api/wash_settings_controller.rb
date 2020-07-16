class Api::WashSettingsController < ApplicationController
  before_action :authenticate_user

  def index
    @wash_settings = WashSetting.all
    render "index.json.jb"
  end
end
