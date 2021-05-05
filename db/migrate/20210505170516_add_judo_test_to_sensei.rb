class AddJudoTestToSensei < ActiveRecord::Migration[6.1]
  def change
    add_reference :senseis, :judo_test, null: false, foreign_key: true
  end
end
