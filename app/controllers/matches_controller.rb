class MatchesController < ApplicationController
  def index
    @matches = Match.all
    @competing_team = CompetingTeam.find(1)
  end
end
