class ChangeNomeAttributeToNameOnCoordinator < ActiveRecord::Migration[5.2]
  def change
    rename_column :coordinators, :nome, :name
  end
end
