class NamesController < ApplicationController

	def new
		@playerName = Name.new
	end

    def create 
      @playerName = Name.new(name_params) 
      if @playerName.save 
        redirect_to 'custom' 
      else 
        render 'new'
      end 
    end

    private 
    def name_params 
        params.require(:name).permit(:content) 
    end

end
