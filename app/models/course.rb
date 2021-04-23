class Course < ApplicationRecord
  belongs_to :dojo
  belongs_to :sensei

  has_many :sensei_courses 
  has_many :courses, through: :sensei_courses

  has_many :judoka_courses 
  has_many :courses, through: :judoka_courses
end
