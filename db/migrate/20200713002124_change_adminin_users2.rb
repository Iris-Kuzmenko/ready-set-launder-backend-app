class ChangeAdmininUsers2 < ActiveRecord::Migration[6.0]
  def change
    change_column :users, :admin, "boolean USING CAST(admin as boolean)"
    change_column :users, :admin, :boolean, default: false
  end
end
