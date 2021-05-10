class Level < ApplicationRecord 
  has_many :senseis
  has_many :judokas

  has_many :category_levels
  has_many :categories, through: :category_levels
end
