class CompetingUsersController < ApplicationController
  include FlagSrcHelper
  before_action :set_competing_user, only: %i[ show edit update destroy ]

  # GET /competing_users or /competing_users.json
  def index
    @competing_users = CompetingUser.all
  end

  # GET /competing_users/1 or /competing_users/1.json
  def show
  end

  # GET /competing_users/new
  def new
    @competing_user = CompetingUser.new
  end

  # GET /competing_users/1/edit
  def edit
    @teams = Team.joins(competing_teams: { group: :competition}).where( competition: { active: true }, groups: { playoff_round: nil }).order("teams.name ASC")
  end

  # POST /competing_users or /competing_users.json
  def create
    @competing_user = CompetingUser.new(competing_user_params)

    respond_to do |format|
      if @competing_user.save
        format.html { redirect_to competing_user_url(@competing_user), notice: "Competing user was successfully created." }
        format.json { render :show, status: :created, location: @competing_user }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @competing_user.errors, status: :unprocessable_entity }
      end
    end
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

  # DELETE /competing_users/1 or /competing_users/1.json
  def destroy
    @competing_user.destroy

    respond_to do |format|
      format.html { redirect_to competing_users_url, notice: "Competing user was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_competing_user
      #@competing_user = CompetingUser.find(params[:id])
      @competing_user = CompetingUser.includes(:competition, :user).where( competition: { active: true } ).find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def competing_user_params
      params.require(:competing_user).permit(:user_id, :competition_id, :competing_team_id, :score)
    end
end
