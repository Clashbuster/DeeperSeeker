class ArtifactsController < ApplicationController

    def show
        artifact = Artifact.find(params[:id])
        render json: artifact
    end

    def index
        artifacts = Artifact.all
        render json: artifacts
    end

    def new
        artifact = Artifact.new
    end

    def create
        artifact = Artifact.create(artifact_params)
    end
   
    private
   
    def artifact_params
        params.require(:artifact).permit(:name, :points)
    end
end
