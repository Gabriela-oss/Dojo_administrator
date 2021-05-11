class CreateJoinTableJudoTestJudoka < ActiveRecord::Migration[6.1]
  def change
    create_join_table :judo_tests, :judokas do |t|
      t.index [:judo_test_id, :judoka_id]
      t.index [:judoka_id, :judo_test_id]
    end
  end
end
