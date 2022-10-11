# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_10_11_000129) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "competing_teams", force: :cascade do |t|
    t.bigint "group_id", null: false
    t.bigint "team_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "points", default: 0
    t.integer "goals", default: 0
    t.integer "wins", default: 0
    t.integer "draws", default: 0
    t.integer "loses", default: 0
    t.integer "goals_made", default: 0
    t.integer "goals_received", default: 0
    t.index ["group_id"], name: "index_competing_teams_on_group_id"
    t.index ["team_id"], name: "index_competing_teams_on_team_id"
  end

  create_table "competing_users", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "competition_id", null: false
    t.bigint "competing_team_id"
    t.integer "score", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["competing_team_id"], name: "index_competing_users_on_competing_team_id"
    t.index ["competition_id"], name: "index_competing_users_on_competition_id"
    t.index ["user_id"], name: "index_competing_users_on_user_id"
  end

  create_table "competition_structures", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "competitions", force: :cascade do |t|
    t.string "name"
    t.bigint "competition_structure_id", null: false
    t.boolean "national_teams"
    t.integer "group_amount"
    t.integer "teams_group"
    t.integer "round_amount"
    t.datetime "begin"
    t.boolean "active"
    t.integer "loops", default: 1, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["competition_structure_id"], name: "index_competitions_on_competition_structure_id"
  end

  create_table "countries", force: :cascade do |t|
    t.string "name"
    t.string "iso_code"
    t.string "iso_alpha2"
    t.string "iso_alpha3"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "departments", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "groups", force: :cascade do |t|
    t.bigint "competition_id", null: false
    t.string "name"
    t.integer "rounds"
    t.integer "playoff_round"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["competition_id"], name: "index_groups_on_competition_id"
  end

  create_table "locations", force: :cascade do |t|
    t.bigint "country_id", null: false
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["country_id"], name: "index_locations_on_country_id"
  end

  create_table "matches", force: :cascade do |t|
    t.bigint "competing_team_home_id"
    t.bigint "competing_team_away_id"
    t.integer "competing_team_home_goals", default: 0
    t.integer "competing_team_away_goals", default: 0
    t.integer "competing_team_home_penalty_goals", default: 0
    t.integer "competing_team_away_penalty_goals", default: 0
    t.datetime "datetime"
    t.boolean "is_finished", default: false
    t.string "name"
    t.bigint "stadium_id", null: false
    t.bigint "round_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["round_id"], name: "index_matches_on_round_id"
    t.index ["stadium_id"], name: "index_matches_on_stadium_id"
  end

  create_table "prediction_results", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "predictions", force: :cascade do |t|
    t.bigint "competing_user_id", null: false
    t.bigint "match_id", null: false
    t.bigint "prediction_result_id", null: false
    t.integer "competing_team_home_goals"
    t.integer "competing_team_away_goals"
    t.integer "score_won"
    t.decimal "perc_home_team_won"
    t.decimal "perc_draw"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["competing_user_id"], name: "index_predictions_on_competing_user_id"
    t.index ["match_id"], name: "index_predictions_on_match_id"
    t.index ["prediction_result_id"], name: "index_predictions_on_prediction_result_id"
  end

  create_table "rounds", force: :cascade do |t|
    t.bigint "competition_id", null: false
    t.integer "number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["competition_id"], name: "index_rounds_on_competition_id"
  end

  create_table "stadia", force: :cascade do |t|
    t.bigint "location_id", null: false
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["location_id"], name: "index_stadia_on_location_id"
  end

  create_table "teams", force: :cascade do |t|
    t.integer "iso_code"
    t.string "name"
    t.boolean "national_team", default: false
    t.string "iso_alpha2"
    t.string "iso_alpha3"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "role", default: 0
    t.string "name"
    t.string "first_name"
    t.string "last_name"
    t.boolean "active", default: true
    t.bigint "department_id", null: false
    t.index ["department_id"], name: "index_users_on_department_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "competing_teams", "groups"
  add_foreign_key "competing_teams", "teams"
  add_foreign_key "competing_users", "competing_teams"
  add_foreign_key "competing_users", "competitions"
  add_foreign_key "competing_users", "users"
  add_foreign_key "competitions", "competition_structures"
  add_foreign_key "groups", "competitions"
  add_foreign_key "locations", "countries"
  add_foreign_key "matches", "rounds"
  add_foreign_key "matches", "stadia"
  add_foreign_key "predictions", "competing_users"
  add_foreign_key "predictions", "matches"
  add_foreign_key "predictions", "prediction_results"
  add_foreign_key "rounds", "competitions"
  add_foreign_key "stadia", "locations"
  add_foreign_key "users", "departments"
end
