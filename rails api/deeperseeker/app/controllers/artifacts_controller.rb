class ArtifactsController < ApplicationController


    def index
        @artifacts = Artifact.all
        render :json => @artifacts
    end

end
