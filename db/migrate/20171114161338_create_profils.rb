class CreateProfils < ActiveRecord::Migration[5.1]
  def change
    create_table :profils do |t|
      t.string :first_name
      t.string :last_name
      t.string :street
      t.integer :street_number
      t.integer :zip_code
      t.string :city
      t.string :avatar
      t.string :country
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
