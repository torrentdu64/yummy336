class CreateGirlToTranslations < ActiveRecord::Migration[5.1]
  def change
    reversible do |dir|
      dir.up do
        Girl.create_translation_table!({
          :name => :string,
          :description => :text,
          :age => :string,
          :origin => :string,
          :service => :text,
          :size => :string,
          :height => :string,
          :weight => :string,
          :bust => :string,
          :hair => :string
        }, {
          :migrate_data => true
        })
      end

      dir.down do
        Girl.drop_translation_table! :migrate_data => true
      end
    end
  end
end





