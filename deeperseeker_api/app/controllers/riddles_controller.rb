class RiddlesController < ApplicationController

    def show
        riddle = Riddle.find(params[:id])
        render json: riddle
    end

    def index
        riddles = Riddle.all
        render json: riddles
    end

    def new
        riddle = Riddle.new
    end

    def create
        riddle = Riddle.create(riddle_params)
    end
   
    private
   
    def riddle_params
        params.require(:riddle).permit(:name, :story_text, :riddle_text, :correct_answer, :points )
    end
end
