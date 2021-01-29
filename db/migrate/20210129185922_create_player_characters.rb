class CreatePlayerCharacters < ActiveRecord::Migration[5.2]
  def change
    create_table :player_characters do |t|
      t.string :name
      t.references :campaign, foreign_key: true
      t.text :backstory
      t.string :class
      t.string :race
      t.integer :level
      t.string :character_sheet_url

      t.timestamps
    end
  end
end
