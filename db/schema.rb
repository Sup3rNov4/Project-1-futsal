ActiveRecord::Schema.define(version: 20160325124044) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "players", force: :cascade do |t|
    t.text     "email"
    t.integer  "team_id"
    t.text     "name"
    t.text     "password_digest"
    t.text     "dob"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "admin",           default: false
  end

  create_table "players_teams", id: false, force: :cascade do |t|
    t.integer "player_id"
    t.integer "team_id"
  end

  create_table "seasons", force: :cascade do |t|
    t.text    "season"
    t.integer "team_id"
  end

  create_table "seasons_teams", id: false, force: :cascade do |t|
    t.integer "season_id"
    t.integer "team_id"
  end

  create_table "teams", force: :cascade do |t|
    t.text "name"
    t.text "competition"
  end

end
