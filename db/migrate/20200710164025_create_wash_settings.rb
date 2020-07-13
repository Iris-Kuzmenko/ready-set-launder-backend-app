class CreateWashSettings < ActiveRecord::Migration[6.0]
  def change
    create_table :wash_settings do |t|
      t.string :setting

      t.timestamps
    end
  end
end
