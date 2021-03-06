class CreateNpcs < ActiveRecord::Migration[5.2]
  def change
    create_table :npcs do |t|
      t.string :name
      t.text :backstory
      t.references :campaign, foreign_key: true
      t.string :alignment

      t.timestamps
    end
  end
end
