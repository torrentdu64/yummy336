class CreateShops < ActiveRecord::Migration[5.1]
  def change
    create_table :shops do |t|
      t.string :title
      t.text :description
      t.string :address
      t.string :phone
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
