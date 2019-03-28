class CreateShopToTranslations < ActiveRecord::Migration[5.1]
   def change
    reversible do |dir|
      dir.up do
        Shop.create_translation_table!({
          :title => :string,
          :description => :text
        }, {
          :migrate_data => true
        })
      end

      dir.down do
        Shop.drop_translation_table! :migrate_data => true
      end
    end
  end
end


