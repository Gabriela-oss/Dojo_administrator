class Level < ApplicationRecord 
  has_many :senseis
  has_many :judokas

  has_and_belongs_to_many :categories
end
