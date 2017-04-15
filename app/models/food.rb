class Food < ApplicationRecord
	has_many :food_dishes
  	has_many :dishes, through: :food_dishes
end