class CardsController < ApplicationController
  def index
    @cards = Card.all
    @months = Month.all
  end

  def new
    @card = Card.new
  end

  def create
    Card.create(card_params)
    redirect_to root_path
  end

  private
  def card_params
    params.require(:card).permit(:title, :content)
  end
end
