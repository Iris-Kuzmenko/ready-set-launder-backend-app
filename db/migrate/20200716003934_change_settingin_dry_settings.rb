class ChangeSettinginDrySettings < ActiveRecord::Migration[6.0]
  def change
    rename_column :dry_settings, :setting, :name
  end
end
