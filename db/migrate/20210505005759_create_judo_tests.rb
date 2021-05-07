class CreateJudoTests < ActiveRecord::Migration[6.1]
  def change
    create_table :judo_tests do |t|
      t.date :date_of_test, null: false
      t.string :description, null: false
      t.integer :weight, null: false, default: 0
      t.integer :height, null: false, default: 0
      t.integer :course_naveta, null: false
      t.integer :speed, null: false
      t.integer :flexibility, null: false
      t.integer :push_up, null: false
      t.integer :ABS, null: false
      t.integer :vertical_jump, null: false

      t.timestamps
    end
  end
end
