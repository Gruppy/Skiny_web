class RenameStoreTypeToStoreName < ActiveRecord::Migration
  def change
    rename_column :stores, :type, :store_name
  end
end
