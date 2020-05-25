class CreatePricingGirls < ActiveRecord::Migration[5.1]
  def change
    create_table :pricing_girls do |t|
      t.string :half
      t.string :forty_five
      t.string :hour
      t.string :outcall
      t.references :girl, foreign_key: true

      t.timestamps
    end
  end
end
