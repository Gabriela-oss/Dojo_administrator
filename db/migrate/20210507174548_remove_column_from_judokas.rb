class RemoveColumnFromJudokas < ActiveRecord::Migration[6.1]
  def change
    remove_reference :judokas, :judo_test, null: false, foreign_key: true
  end
end
