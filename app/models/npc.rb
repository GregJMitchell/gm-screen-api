class Npc < ApplicationRecord
  belongs_to :campaign
  belongs_to :quest, optional: true
end
