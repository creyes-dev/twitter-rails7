class CompetingUsersController < ApplicationController
  include FlagSrcHelper
  before_action :authenticate_user!
  before_action :set_competing_user, only: %i[ edit select_favorite_competing_team ]

  # GET /competing_users/1/edit
  def edit
    @teams = Team.joins(competing_teams: { group: :competition}).where( competition: { active: true }, groups: { playoff_round: nil }).order("teams.name ASC")
  end

  # POST /select_favorite_competing_team or /select_favorite_competing_team.json
  def select_favorite_competing_team
    # TODO: It doesn't work if there are more than one active competition
    # TODO: It doesn't notificate if the competing user doesn't exist, ActiveRecord just throw an exception
    if @competing_user.nil?
      format.json { render json: 'competing user not found', status: :unprocessable_entity }
    else
      competing_team = CompetingTeam.joins(:team,:group).where(group: { playoff_round: nil, competition: @competing_user.competition.id }, team: { id: params[:team]}).first
      if competing_team.nil?
        format.json { render json: 'team not found in the competition', status: :unprocessable_entity }
      else
        respond_to do |format|
          if @competing_user.update(competing_team_id: competing_team.id)
            format.json { render json: @competing_user, status: :ok }
          else
            format.json { render json: @competing_user.errors, status: :unprocessable_entity }
          end
        end
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_competing_user
      @competing_user = CompetingUser.includes(:competition, :user, :competing_team).where( competition: { active: true } ).find(current_user.id)
    end

    # Only allow a list of trusted parameters through.
    def competing_user_params
      params.require(:competing_user).permit(:user_id, :competition_id, :competing_team_id, :score)
    end
end
