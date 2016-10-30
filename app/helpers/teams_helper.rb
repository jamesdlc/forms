module TeamsHelper
  def find_team
    @team = Team.find_by_id(params[:team_id])
  end
end
