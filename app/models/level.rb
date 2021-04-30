class Level < ApplicationRecord
  has_many :senseis
  has_many :judokas
end
