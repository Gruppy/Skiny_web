class CreateCosmetics < ActiveRecord::Migration
  def change
    create_table :cosmetics do |t|
      t.string :name
      t.integer :brand_id
      t.integer :category_id

      t.timestamps null: false
    end
  end
end
