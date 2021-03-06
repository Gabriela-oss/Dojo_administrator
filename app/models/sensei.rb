class Sensei < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, 
         :recoverable, :rememberable, :validatable

  has_many :sensei_dojos 
  has_many :dojos, through: :sensei_dojos

  has_many :sensei_courses
  has_many :courses, through: :sensei_courses

  belongs_to :level
  has_many :judo_tests

  def self.find_by_uid!(uid)
    Sensei.find_by!("name = :p OR id = :p", p: uid)
  end
end
