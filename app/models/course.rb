class Course < ApplicationRecord
  belongs_to :dojo

  has_many :sensei_courses, dependent: :destroy 
  has_many :senseis, through: :sensei_courses

  has_many :judoka_courses, dependent: :destroy 
  has_many :judokas, through: :judoka_courses
end
