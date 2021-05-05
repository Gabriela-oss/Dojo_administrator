class JudoTest < ApplicationRecord
  has_many :sensei
  has_many :judoka
  has_many :course
end
