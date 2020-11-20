class ShowsController < ApplicationController

  def index
    
  end

  def new
    @city = City.find_by(id: params[:city_id])
    @show = @city.shows.new()
  end

  def create
    city = City.find_by(id: params[:city_id])
    @show = city.shows.new()
    @show.save
  end

  def edit
    @show = Show.find_by(id: params[:id])
  end

  def update
    @show = Show.find_by(id: params[:id])
    @show.update(show_params)
  end

  private 

  def show_params
    params.require(:show).permit(:show_time)
  end
    
  end
end
