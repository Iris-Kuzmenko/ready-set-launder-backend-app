class AddImageUrlToDrySettings < ActiveRecord::Migration[6.0]
  def change
    add_column :dry_settings, :image_url, :string
  end
end
