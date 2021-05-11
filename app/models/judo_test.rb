class JudoTest < ApplicationRecord
  has_many :senseis
  
  has_many :judoka_judotests
  has_many :judokas, through: :judoka_judotests
end
