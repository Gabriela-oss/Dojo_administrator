class RemoveColumnFromCourses < ActiveRecord::Migration[6.1]
  def change
    remove_reference :courses, :judo_test, null: false, foreign_key: true
  end
end
