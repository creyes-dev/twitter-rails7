class MatchesController < ApplicationController
  def index
    @matches = Match.all.order(:round_id, :name)
    @competing_team = CompetingTeam.find(1)
  end
end
