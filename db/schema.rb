# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160511110418) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.text     "comment"
    t.integer  "post_id"
    t.integer  "player_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "comments", ["player_id"], name: "index_comments_on_player_id", using: :btree
  add_index "comments", ["post_id"], name: "index_comments_on_post_id", using: :btree

  create_table "conversations", force: :cascade do |t|
    t.integer  "sender_id"
    t.integer  "recipient_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "games", force: :cascade do |t|
    t.boolean "won"
    t.boolean "lost"
    t.boolean "drawn"
    t.integer "team_id"
    t.boolean "homeTeam"
    t.integer "week_id"
  end

  create_table "games_seasons", id: false, force: :cascade do |t|
    t.integer "game_id"
    t.integer "season_id"
  end

  create_table "games_teams", id: false, force: :cascade do |t|
    t.integer "game_id"
    t.integer "team_id"
  end

  create_table "goals", force: :cascade do |t|
    t.integer "scored"
    t.integer "assists"
    t.text    "conceded"
    t.integer "player_id"
  end

  create_table "goals_players", id: false, force: :cascade do |t|
    t.integer "goal_id"
    t.integer "player_id"
  end

  create_table "messages", force: :cascade do |t|
    t.text     "body"
    t.integer  "conversation_id"
    t.integer  "player_id"
    t.boolean  "read",            default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "messages", ["conversation_id"], name: "index_messages_on_conversation_id", using: :btree
  add_index "messages", ["player_id"], name: "index_messages_on_player_id", using: :btree

  create_table "players", force: :cascade do |t|
    t.text     "email"
    t.integer  "team_id"
    t.text     "name"
    t.text     "password_digest"
    t.text     "dob"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "admin",           default: false
    t.text     "image"
    t.string   "avatar"
  end

  create_table "players_seasons", id: false, force: :cascade do |t|
    t.integer "player_id"
    t.integer "season_id"
  end

  create_table "players_teams", id: false, force: :cascade do |t|
    t.integer "player_id"
    t.integer "team_id"
  end

  create_table "posts", force: :cascade do |t|
    t.text     "title"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "player_id"
    t.text     "topic"
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

  create_table "weeks", force: :cascade do |t|
    t.integer  "week"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "season_id"
  end

  add_foreign_key "comments", "players"
  add_foreign_key "comments", "posts"
end
