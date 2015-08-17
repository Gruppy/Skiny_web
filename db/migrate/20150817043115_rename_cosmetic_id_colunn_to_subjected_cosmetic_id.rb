class RenameCosmeticIdColunnToSubjectedCosmeticId < ActiveRecord::Migration
  def change
    rename_column :similarities, :cosmetic_id, :subjected_cosmetic_id
    rename_column :similarities, :against_cosmetic_id, :cosmetic_id
  end
end
