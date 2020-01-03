class PlayersController < ApplicationController

        def remove_presence
            player = Player.find(params[:id])
            player.destroy

            render json: "Removal completed"
        end

        def game_over

            player = Player.find(params[:id])
            player.problem_failed_at = params[:problem_id]
            player.leader_board_points = params[:final_points]
            player.save


            players = Player.order('leader_board_points DESC')

            render json: players
        end

        def correct_answer
            # byebug
            player = Player.find(params[:id])
            artifacts = Artifact.all
            artifact = artifacts.sample

            player.player_artifacts.create(artifact_id: artifact.id)
            player.player_riddles.create(riddle_id: params[:problem_id])

            player_points = 0

            player.riddles.each do |n|
                player_points += n.points
            end
            player.artifacts.each do |n|
                player_points += n.points
            end

            correct_response = {}

            correct_response['player_points'] = player_points
            correct_response['new_artifact'] = artifact
            # byebug

            render json: correct_response
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
            params.require(:player).permit(:name, :leader_board_points)
        end
  
end
