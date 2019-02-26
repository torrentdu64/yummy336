class AddPhotoOneToGirls < ActiveRecord::Migration[5.1]
  def change
    add_column :girls, :photo_one, :string
  end
end
