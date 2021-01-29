class Storyline < ApplicationRecord
  belongs_to :campaign
  has_many :quests
end
