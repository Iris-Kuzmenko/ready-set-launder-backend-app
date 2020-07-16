class ChangeSettinginWashSettings < ActiveRecord::Migration[6.0]
  def change
    rename_column :wash_settings, :setting, :name 
  end
end
