class TeamsController < ApplicationController

  def index 
    @teams = Team.all
    render "index.json.jbuilder" 
  end 

  def create
    @team = Team.create(
      id: params[:id]
      creature: params[:creature],
      name: params[:name],
      state: params[:state],
      sport: params[:sport]
      )
    render :show
  end
 
  def show
    @team = Team.find_by(id:params[:id])
  end
 
  def update
    @team = Team.find_by(id:params[:id])
    @team.update(
      id: params[:id]
      creature: params[:creature],
      name: params[:name],
      state: params[:state],
      sport: params[:sport]
      )
    render :show
  end
 
  def destroy
    @team = Team.find_by(id:params[:id])
    @team.destroy
    render json: {message: "Team Removed!!!!!"}
  end
end
