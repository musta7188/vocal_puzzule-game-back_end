class Game < ApplicationRecord
  belongs_to :player
  has_many :card_games
  has_many :cards, through: :card_games
end
