class PagesController < ApplicationController
	def home
	end

	def new
		@numPlayers = Game.new
	end

    def create 
      @numPlayers = Game.new(message_params) 
      if @message.save 
        redirect_to 'info' 
      else 
        render 'new' 
      end 
    end

    private 
    def message_params 
        params.require(:game).permit(:players) 
    end

	def setup
	end

    def start
    end

	def custom
	end

	def url
	end
end
