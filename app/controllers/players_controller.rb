class PlayersController < ApplicationController

    def index
        players = Player.all
        render json: players
    end

    def new
        player = Player.new
    end

    def create
        player = Player.new(player_params)
        
            if player.valid?
                player.save
                render json: player
            else
                render json: { errors: player.errors.full_messages }, status: :not_acceptable    
        end
    end


 private

        def player_params
            params.require(:player).permit(:name, :password)
        end

    
end
