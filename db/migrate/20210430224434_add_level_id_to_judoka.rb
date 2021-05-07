class AddLevelIdToJudoka < ActiveRecord::Migration[6.1]
  def change
    add_reference :judokas, :level, null: false, foreign_key: true
  end
end
