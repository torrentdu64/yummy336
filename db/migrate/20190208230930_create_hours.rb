class CreateHours < ActiveRecord::Migration[5.1]
  def change
    create_table :hours do |t|
      t.string :day
      t.time :open_hour
      t.time :close_hour
      t.date :date

      t.timestamps
    end
  end
end
