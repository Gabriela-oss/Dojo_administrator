class Judoka < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  attr_accessor :categories
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  belongs_to :dojo
  belongs_to :level

  has_one_attached :photo
  
  has_many :judo_tests
  has_many :judoka_courses
  has_many :courses, through: :judoka_courses

  def self.find_by_uid!(uid)
    Judoka.find_by!("name = :p OR id = :p", p: uid)
  end
end
