class AddNativeFieldToLanguages < ActiveRecord::Migration[5.2]
  def change
    add_column :languages, :is_native, :boolean
  end
end
