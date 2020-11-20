class ShowsController < ApplicationController

  def index
    
  end

  def new
    @show = Show.new()
  end

  def create
    @show = Show.new(show_params)
    @show.save
  end

  def edit
    @show = Show.find_by(id: params[:id])
    @show.save
  end

  def update
    
  end

  private 

  def show_params
    params.require(:show).permit(:show_time)
  end
    
  end
end
