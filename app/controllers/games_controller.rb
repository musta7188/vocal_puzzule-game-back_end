class GamesController < ApplicationController

  # before_action :require_player

  def index 
    games = Game.all

    render json: GameSerializer.new(games).to_serialized_json 
  end
  
  def show 
    game =  Game.find[params[:id]]
    render json: GameSerializer.new(game).to_serialized_json
  end

  def create
    game = Game.create(player_id: params[:player_id], score: params[:score])
    # params[user_id], params[score], params[card_ids]
  end
 
end
