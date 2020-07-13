class ChangeItemsWashSettingsId < ActiveRecord::Migration[6.0]
  def change
    rename_column :items, :wash_settings_id, :wash_setting_id
  end
end
