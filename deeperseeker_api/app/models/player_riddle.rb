class PlayerRiddle < ApplicationRecord
    belongs_to :riddle
    belongs_to :player
end
