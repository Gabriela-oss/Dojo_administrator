class CreateDojos < ActiveRecord::Migration[6.1]
  def change
    create_table :dojos do |t|
      t.string :name
      t.string :email
      t.string :address
      t.boolean :active

      t.timestamps
    end
  end
end
