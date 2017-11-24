class RenamePhotoToPicture < ActiveRecord::Migration[5.1]
  def change
    rename_column :companies, :photo, :picture
  end
end
