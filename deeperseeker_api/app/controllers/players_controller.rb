class PlayersController < ApplicationController

        def correct_answer
            # byebug
            player = Player.find(params[:id])
            artifacts = Artifact.all
            artifact = artifacts.sample

            player.player_artifacts.create(artifact_id: artifact.id)
            player.player_riddles.create(riddle_id: params[:problem_id])
            render json: player.artifacts
        end

        def show
            player = Player.find(params[:id])
            render json: player
        end

        def index
            players = Player.all
            render json: players
        end
   
        def new
            player = Player.new
        end
  
        def create
            player = Player.create(player_params)
            render json: player
        end
       
        private
       
        def player_params
            params.require(:player).permit(:name, :points)
        end
  
end
