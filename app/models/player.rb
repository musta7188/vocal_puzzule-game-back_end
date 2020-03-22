class Player < ApplicationRecord
  has_many :games
  has_many :cards, through: :games
end
