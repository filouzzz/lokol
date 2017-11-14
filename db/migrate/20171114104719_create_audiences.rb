class CreateAudiences < ActiveRecord::Migration[5.1]
  def change
    create_table :audiences do |t|
      t.string :gender
      t.string :title
      t.integer :age_min
      t.integer :age_max
      t.string :location
      t.string :interest
      t.references :campaign, foreign_key: true

      t.timestamps
    end
  end
end
