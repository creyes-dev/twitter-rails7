class CompetingUsersController < ApplicationController
  before_action :set_competing_user, only: %i[ show update ]

  # GET /competing_users/1 or /competing_users/1.json
  def show
    @teams = Team.joins(competing_teams: { group: :competition}).where( competition: { active: true }, groups: { playoff_round: nil }).order("teams.name ASC")
  end

  # PATCH/PUT /competing_users/1 or /competing_users/1.json
  def update
    respond_to do |format|
      if @competing_user.update(competing_user_params)
        format.html { redirect_to competing_user_url(@competing_user), notice: "Competing user was successfully updated." }
        format.json { render :show, status: :ok, location: @competing_user }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @competing_user.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_competing_user
      @competing_user = CompetingUser.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def competing_user_params
      params.require(:competing_user).permit(:user_id, :competition_id, :competing_team_id, :score)
    end
end
