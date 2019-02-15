class AddPhotoToGirls < ActiveRecord::Migration[5.1]
  def change
    add_column :girls, :photo_three, :string
    add_column :girls, :photo_four, :string
    add_column :girls, :photo_five, :string
    add_column :girls, :photo_six, :string
    add_column :girls, :photo_seven, :string
    add_column :girls, :photo_eight, :string
    add_column :girls, :photo_nine, :string
    add_column :girls, :photo_ten, :string
  end
end
