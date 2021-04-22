class CreateSenseiDojos < ActiveRecord::Migration[6.1]
  def change
    create_table :sensei_dojos do |t|
      t.references :sensei, null: false, foreign_key: true
      t.belongs_to :dojo, null: false, foreign_key: true

      t.timestamps
    end
  end
end
