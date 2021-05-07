class JudoTest < ApplicationRecord
  has_many :senseis
  has_many :judokas
  has_many :courses
end
