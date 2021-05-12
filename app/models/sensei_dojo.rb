class SenseiDojo < ApplicationRecord
  belongs_to :sensei
  belongs_to :dojo

  has_many :judo_tests
end
