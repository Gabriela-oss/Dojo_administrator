class Dojo < ApplicationRecord
  has_many :sensei_dojos 
  has_many :senseis, through: :sensei_dojos

  has_many :judokas 
  has_many :courses
end
