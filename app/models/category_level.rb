class CategoryLevel < ApplicationRecord
  belongs_to :level
  belongs_to :category
end