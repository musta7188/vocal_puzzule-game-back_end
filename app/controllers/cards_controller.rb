class CardsController < ApplicationController

  def index 
    # cards = Card.all.shuffle[0..6].take(6)
    cards = Card.all.take(6)
    render json: cards, only: [:id, :image1, :image2, :word, :points]
  end
end



