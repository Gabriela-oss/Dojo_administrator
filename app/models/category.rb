class Category < ApplicationRecord
  has_many :category_levels
  has_many :levels, through: :category_levels
end
