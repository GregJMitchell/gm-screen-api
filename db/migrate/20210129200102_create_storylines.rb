class CreateStorylines < ActiveRecord::Migration[5.2]
  def change
    create_table :storylines do |t|
      t.string :name
      t.references :campaign, foreign_key: true
      t.string :description

      t.timestamps
    end
  end
end
