class AddJudoTestToJudoka < ActiveRecord::Migration[6.1]
  def change
    add_reference :judokas, :judo_test, null: false, foreign_key: true
  end
end
