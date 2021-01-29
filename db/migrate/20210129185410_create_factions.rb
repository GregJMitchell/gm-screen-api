class CreateFactions < ActiveRecord::Migration[5.2]
  def change
    create_table :factions do |t|
      t.string :name
      t.references :campaign, foreign_key: true
      t.text :description
      t.string :capitol

      t.timestamps
    end
  end
end
