class TeamsController < ApplicationController
  include TeamsHelper

  def index
    @teams = Team.all
    render json: @teams, status: :ok #response code 200
  end

  def show
    render json: @team
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
      head :no_content #status code 204
      flash[:notice] = "Team has been successfully edited."
    else
      flash[:notice] = "Something went wrong."
      render json: @team.errors, status: :unprocessable_entity #response code 422
    end
  end

  def destroy
    if @team.destroy
      head :no_content #status code 204
      flash[:notice] = "Team has been successfully deleted."
    else
      flash[:notice] = "Something went wrong."
    end
  end

end
