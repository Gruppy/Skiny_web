class CreateSimilarities < ActiveRecord::Migration
  def change
    create_table :similarities do |t|
      t.integer :cosmetic_id
      t.integer :against_cosmetic_id
      t.float :value

      t.timestamps null: false
    end
  end
end
