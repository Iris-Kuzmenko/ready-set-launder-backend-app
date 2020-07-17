class AddDefaultMigration < ActiveRecord::Migration[6.0]
  def change
    change_column :items, :status, :string, default: "created"
  end
end
