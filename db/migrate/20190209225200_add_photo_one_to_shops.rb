class AddPhotoOneToShops < ActiveRecord::Migration[5.1]
  def change
    add_column :shops, :photo_one, :string
  end
end
