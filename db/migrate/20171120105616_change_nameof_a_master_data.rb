class ChangeNameofAMasterData < ActiveRecord::Migration[5.1]
  def change
    rename_column :campaigns, :description, :adset_name
    remove_column :campaigns, :message, :string
    remove_column :campaigns, :photos, :string
  end
end
