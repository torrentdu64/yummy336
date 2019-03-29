class AddSlugToGirls < ActiveRecord::Migration[5.1]
  def change
    add_column :girls, :slug, :string
    add_index :girls, :slug
  end
end
