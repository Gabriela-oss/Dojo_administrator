class CreateJoinTableCategoryLevel < ActiveRecord::Migration[6.1]
  def change
    create_join_table :categories, :levels do |t|
      t.index [:category_id, :level_id]
      t.index [:level_id, :category_id]
    end
  end
end
