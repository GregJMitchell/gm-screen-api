class CreateCities < ActiveRecord::Migration[5.2]
  def change
    create_table :cities do |t|
      t.string :name
      t.references :faction, foreign_key: true
      t.string :gov_type
      t.integer :population
      t.text :description
      t.references :campaign, foreign_key: true

      t.timestamps
    end
  end
end
