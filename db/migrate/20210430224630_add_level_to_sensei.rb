class AddLevelToSensei < ActiveRecord::Migration[6.1]
  def change
    add_reference :senseis, :level, null: false, foreign_key: true
  end
end
