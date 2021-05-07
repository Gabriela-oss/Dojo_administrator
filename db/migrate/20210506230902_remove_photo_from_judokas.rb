class RemovePhotoFromJudokas < ActiveRecord::Migration[6.1]
  def change
    remove_column :judokas, :photo, :string
  end
end
