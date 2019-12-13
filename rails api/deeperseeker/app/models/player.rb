class Player < ApplicationRecord
    has_many :player_artifacts
    has_many :artifacts, through: :player_artifacts
    has_many :player_riddles
    has_many :riddles, through: :player_riddles
end
