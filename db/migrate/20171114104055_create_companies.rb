class CreateCompanies < ActiveRecord::Migration[5.1]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :street
      t.integer :street_number
      t.integer :zip_code
      t.string :city
      t.string :country
      t.string :email
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
