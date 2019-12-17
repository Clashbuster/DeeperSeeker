class PlayersController < ApplicationController

        def correct_answer
            player.find
            
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
        end
       
        private
       
        def player_params
            params.require(:player).permit(:name, :points)
        end
  
end
