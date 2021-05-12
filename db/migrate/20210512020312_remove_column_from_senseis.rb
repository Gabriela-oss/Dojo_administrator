class RemoveColumnFromSenseis < ActiveRecord::Migration[6.1]
  def change
    remove_reference :senseis, :judo_test, null: false, foreign_key: true
  end
end
