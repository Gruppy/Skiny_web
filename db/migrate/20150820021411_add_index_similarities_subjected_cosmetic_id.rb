class AddIndexSimilaritiesSubjectedCosmeticId < ActiveRecord::Migration
  def change
    add_index :similarities, :subjected_cosmetic_id
  end
end
