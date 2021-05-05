class Judoka < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  belongs_to :dojo
  belongs_to :level
  belongs_to :judo_test

  has_many :judoka_courses
  has_many :courses, through: :judoka_courses

end
