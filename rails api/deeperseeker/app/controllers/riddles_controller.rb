class RiddlesController < ApplicationController

    def index
        @riddles = Riddle.all
        render :json => @riddles
    end


end
