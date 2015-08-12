class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.integer :cosmetic_id
      t.integer :price
      t.string :type
      t.string :url

      t.timestamps null: false
    end
  end
end
