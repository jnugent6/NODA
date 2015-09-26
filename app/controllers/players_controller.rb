class PlayersController < ApplicationController
	def new
		@numPlayers = Player.new
	end

    def create 
      @numPlayers = Player.new(player_params) 
      if @numPlayers.save 
        redirect_to 'info' 
      else 
        render 'new'
      end 
    end

    private 
    def player_params 
        params.require(:player).permit(:content) 
    end

end
