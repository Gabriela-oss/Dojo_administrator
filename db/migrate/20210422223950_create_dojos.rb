class CreateDojos < ActiveRecord::Migration[6.1]
  def change
    create_table :dojos do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.string :address, null: false
      t.boolean :active, null: false, default: true

      t.timestamps
    end
  end
end
