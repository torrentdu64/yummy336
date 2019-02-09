class CreateAdvertises < ActiveRecord::Migration[5.1]
  def change
    create_table :advertises do |t|
      t.string :title
      t.string :web_url
      t.references :girl, foreign_key: true

      t.timestamps
    end
  end
end
