class AttractionController < ApplicationController

  before_action :set_attraction, only: [:show, :new, :edit]

  def index
    @attractions = Attraction.all
  end

  def show

  end

  def new

  end

  def edit

  end

private

  def set_attraction
    @attraction = Attraction.find(params[:id])
  end

  def attraction_params
    params.require(:attraction).permit(:name, :tickets, :nausea_rating, :happiness_rating, :min_height)
  end

end
