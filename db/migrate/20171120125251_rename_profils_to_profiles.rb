class RenameProfilsToProfiles < ActiveRecord::Migration[5.1]
  def change
    rename_table :profils, :profiles
  end
end
