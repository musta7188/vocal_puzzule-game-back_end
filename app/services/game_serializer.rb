class GameSerializer 

  def initialize(games)
    @games = games
  end

  def to_serialized_json 
    data = {
      include: {
        player: {
          only: [:name, :id, :score]
        },
        card: {only: [:id, :word, :image1, :image2]}
      },
      only: [:id, :player_id, :card_id]
    }

    @games.to_json(data)

  end
end