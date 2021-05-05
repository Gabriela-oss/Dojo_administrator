class Course < ApplicationRecord
  belongs_to :dojo
  belongs_to :judo_test


  has_many :sensei_courses 
  has_many :senseis, through: :sensei_courses

  has_many :judoka_courses 
  has_many :judokas, through: :judoka_courses
end
