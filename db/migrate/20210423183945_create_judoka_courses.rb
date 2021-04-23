class CreateJudokaCourses < ActiveRecord::Migration[6.1]
  def change
    create_table :judoka_courses do |t|
      t.references :judoka, null: false, foreign_key: true
      t.references :course, null: false, foreign_key: true

      t.timestamps
    end
  end
end
