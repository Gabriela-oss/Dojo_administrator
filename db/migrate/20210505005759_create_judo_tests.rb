class CreateJudoTests < ActiveRecord::Migration[6.1]
  def change
    create_table :judo_tests do |t|
      t.date :date_of_test, null: false
      t.string :description, null: false
      t.integer :weight, null: false, default: 0
      t.integer :height, null: false, default: 0
      t.string :course_naveta, null: false
      t.string :speed, null: false
      t.string :flexibility, null: false
      t.string :push_up, null: false
      t.string :ABS, null: false
      t.string :vertical_jump, null: false

      t.timestamps
    end
  end
end
