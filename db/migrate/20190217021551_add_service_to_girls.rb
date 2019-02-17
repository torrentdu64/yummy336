class AddServiceToGirls < ActiveRecord::Migration[5.1]
  def change
    add_column :girls, :services, :json, null: false, default: '{}'
  end
end
