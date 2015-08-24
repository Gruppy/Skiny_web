class CreateUsingCosmetics < ActiveRecord::Migration
  def change
    create_table :using_cosmetics do |t|
      t.integer :user_id
      t.integer :cosmetic_id
      t.integer :preference

      t.timestamps null: false
    end
  end
end
