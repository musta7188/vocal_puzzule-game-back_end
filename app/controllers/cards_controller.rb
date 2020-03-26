class CardsController < ApplicationController

  def index 
    cards = Card.all
    render json: cards, only: [:id, :image1, :image2, :word, :score]
  end
end



