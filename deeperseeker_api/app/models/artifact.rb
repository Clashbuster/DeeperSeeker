class Artifact < ApplicationRecord
    has_many :player_artifacts
    has_many :players, through: :player_artifacts
end
