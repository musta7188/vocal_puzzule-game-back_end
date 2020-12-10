class GamesController < ApplicationController

  def index 
    games = Game.sort_by_score.take(5);

    render json: GameSerializer.new(games).to_serialized_json 
  end
  
  def show 
    game =  Game.find[params[:id]]
    render json: GameSerializer.new(game).to_serialized_json
  end

  def create
    game = Game.create(player_id: params[:player_id], score: params[:score])
    render json: GameSerializer.new(game).to_serialized_json
  end
 
end
