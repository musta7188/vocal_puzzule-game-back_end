class Card < ApplicationRecord
  has_many :games
  has_many :players, through: :games
end
