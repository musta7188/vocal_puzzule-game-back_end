class Game < ApplicationRecord
  belongs_to :player
  has_many :card_games
  has_many :cards, through: :card_games

  def self.sort_by_score 
    self.all.sort_by {|g| -g.score}
  end
end
