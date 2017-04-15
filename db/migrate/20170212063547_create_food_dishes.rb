class CreateFoodDishes < ActiveRecord::Migration[5.0]
  def change
    create_table :food_dishes do |t|
      t.references :food, foreign_key: true
      t.references :dish, foreign_key: true

      t.timestamps
    end
  end
end
