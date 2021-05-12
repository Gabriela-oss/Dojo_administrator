class AddReferenceToJudoTests < ActiveRecord::Migration[6.1]
  def change
    add_reference :judo_tests, :judoka, null: false, foreign_key: true
    add_reference :judo_tests, :sensei, null: false, foreign_key: true
  end
end
