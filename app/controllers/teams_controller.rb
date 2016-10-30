class TeamsController < ApplicationController
  include TeamsHelper

  def index
  end

  def new
    @team = Team.new
  end

  def create
    @team = Team.new(team_params)
    if @team.save
      flash[:notice] = "Team successfully created."
    else
      flash[:notice] = "Something went wrong."
    end
  end

  def edit
  end

  def update
    if @team.update(team_params)
      flash[:notice] = "Team has been successfully edited."
    else
      flash[:notice] = "Something went wrong."
    end
  end

  def destroy
    if @team.destroy
      flash[:notice] = "Team has been successfully deleted."
    else
      flash[:notice] = "Something went wrong."
    end
  end

end
