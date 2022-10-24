class MatchesController < ApplicationController
  include ApplicationHelper
  include FlagSrcHelper

  # GET /matches/user_id/is_finished/limit/round_id
  def index

    @matches_user = User.find(params[:user_id])

    # TODO: This could be more elegant
    is_finished = (params[:is_finished] == '1' ? true : false)
    limit = (params[:limit] == '0' ? 490490 : params[:limit].to_i)
    round_condition = (params[:round_id] == '0' ? "1=1" : "matches.round_id = #{params[:round_id]}")

    @matches = Match.joins(
      round: :competition,
      stadium: :location,
      competing_team_home: [:team, :group],
      competing_team_away: [:team, :group])
    .left_outer_joins(predictions:
        [ :prediction_result,
          { competing_user: :user },
          { competing_user_awards: :award }])
    .where( competition: { active: true })
    .where('is_finished = ?', is_finished )
    .where(round_condition)
    .order(is_finished ? { datetime: :desc} : { datetime: :asc }, is_finished ? { name: :desc } : { name: :asc})
    .limit(limit)
  end
end
