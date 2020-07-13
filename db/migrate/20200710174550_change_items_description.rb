class ChangeItemsDescription < ActiveRecord::Migration[6.0]
  def change
    rename_column :items, :description, :name
  end
end
