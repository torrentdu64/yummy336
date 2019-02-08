class CreateGirls < ActiveRecord::Migration[5.1]
  def change
    create_table :girls do |t|
      t.string :name
      t.text :description
      t.string :age
      t.references :advertise, foreign_key: true

      t.timestamps
    end
  end
end
