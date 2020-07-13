class ChangeItemsDrySettingsId < ActiveRecord::Migration[6.0]
  def change
    rename_column :items, :dry_settings_id, :dry_setting_id
  end
end
