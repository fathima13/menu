class AddCuisineIdToDishes < ActiveRecord::Migration[5.0]
  def change
    add_column :dishes, :cuisine_id, :integer
    add_foreign_key :dishes, :cuisines
  end
end
