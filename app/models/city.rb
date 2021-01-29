class City < ApplicationRecord
  belongs_to :faction
  belongs_to :campaign
  has_many :npcs
end
