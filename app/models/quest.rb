class Quest < ApplicationRecord
  belongs_to :campaign
  belongs_to :storyline
  belongs_to :city
  has_many :npcs
end
