class CreateSenseiCourses < ActiveRecord::Migration[6.1]
  def change
    create_table :sensei_courses do |t|
      t.references :sensei, null: false, foreign_key: true
      t.references :course, null: false, foreign_key: true

      t.timestamps
    end
  end
end
