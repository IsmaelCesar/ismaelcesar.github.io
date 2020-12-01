class RenameColumnInAuthor < ActiveRecord::Migration[5.2]
  def change
    rename_column :authors, :nome, :name
  end
end
