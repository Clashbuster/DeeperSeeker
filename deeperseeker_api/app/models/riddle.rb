class Riddle < ApplicationRecord
    has_many :player_riddles
    has_many :players, through: :player_riddles
end
