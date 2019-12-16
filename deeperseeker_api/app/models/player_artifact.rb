class PlayerArtifact < ApplicationRecord
    belongs_to :artifact
    belongs_to :player
end
