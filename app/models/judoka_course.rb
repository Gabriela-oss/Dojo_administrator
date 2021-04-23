class JudokaCourse < ApplicationRecord
  belongs_to :judoka
  belongs_to :course
end
