class PlayerArtifact < ApplicationRecord
    belongs_to :player
    belongs_to :artifact
end
