class CreateCosmeticIngredients < ActiveRecord::Migration
  def change
    create_table :cosmetic_ingredients do |t|
      t.integer :ingredient_id
      t.integer :cosmetic_id
      t.integer :order

      t.timestamps null: false
    end
  end
end
