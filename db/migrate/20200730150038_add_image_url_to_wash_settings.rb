class AddImageUrlToWashSettings < ActiveRecord::Migration[6.0]
  def change
    add_column :wash_settings, :image_url, :string
  end
end
