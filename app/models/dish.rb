class Dish < ApplicationRecord
  belongs_to :cuisine 
  has_many :food_dishes
  has_many :foods, through: :food_dishes
end