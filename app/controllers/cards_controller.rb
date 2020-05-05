class CardsController < ApplicationController
  def index
    cards = Card.includes(:month)
    @months = Month.all
    @plans = Plan.all
  end

  def new
    @card = Card.new
    @plans = Plan.all
  end

  def create
    Card.create(card_params)
    redirect_to root_path
  end

  def show
    @card = Card.find(params[:id])
  end

  def done
    @card = Card.find(params[:id])
    if @card.status.blank?
      @card.update(status: "done")
    else
      @card.update(status: "")
    end
    redirect_to root_path
  end

  private
  def card_params
    params.require(:card).permit(:title, :content, :month_id, :plan_id)
  end
end
