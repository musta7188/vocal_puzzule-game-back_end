class GameSerializer 

  def initialize(games)
    @games = games
  end

  def to_serialized_json 
    data = { include: { player: {only: [:name, :id]} }, only: [:id, :score] }

    @games.to_json(data)

  end
end