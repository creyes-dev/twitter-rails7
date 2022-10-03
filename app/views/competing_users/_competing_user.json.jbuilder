json.extract! competing_user, :id, :user_id, :competition_id, :competing_team_id, :score, :created_at, :updated_at
json.url competing_user_url(competing_user, format: :json)
