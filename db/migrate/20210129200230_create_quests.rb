class CreateQuests < ActiveRecord::Migration[5.2]
  def change
    create_table :quests do |t|
      t.string :name
      t.string :description
      t.string :rewards
      t.references :campaign, foreign_key: true
      t.references :storyline, foreign_key: true
      t.references :city, foreign_key: true

      t.timestamps
    end
  end
end
