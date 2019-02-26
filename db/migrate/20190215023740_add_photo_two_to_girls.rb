class AddPhotoTwoToGirls < ActiveRecord::Migration[5.1]
  def change
    add_column :girls, :photo_two, :string
  end
end
