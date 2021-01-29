class Campaign < ApplicationRecord
  belongs_to :user
  has_many :npcs
  has_many :factions
  has_many :cities
  has_many :npcs
  has_many :player_characters
  has_many :storylines
  has_many :quests
end
