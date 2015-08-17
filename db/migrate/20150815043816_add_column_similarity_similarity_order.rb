class AddColumnSimilaritySimilarityOrder < ActiveRecord::Migration
  def change
    add_column :similarities, :similarity_order, :integer
  end
end
