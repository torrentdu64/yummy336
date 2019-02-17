class AddInfoToGirls < ActiveRecord::Migration[5.1]
  def change
    add_column :girls, :origin, :string
    add_column :girls, :service, :text
    add_column :girls, :phone, :string
    add_column :girls, :size, :string
    add_column :girls, :height, :string
    add_column :girls, :weight, :string
    add_column :girls, :bust, :string
    add_column :girls, :hair, :string
  end
end
