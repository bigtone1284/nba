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

ActiveRecord::Schema.define(version: 20150227041310) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "players", force: :cascade do |t|
    t.string   "name"
    t.integer  "age"
    t.integer  "games"
    t.integer  "games_started"
    t.integer  "minutes"
    t.integer  "three_pointers"
    t.integer  "three_pointers_attempted"
    t.integer  "two_pointers"
    t.integer  "two_pointers_attempted"
    t.integer  "free_throws"
    t.integer  "free_throws_attempted"
    t.integer  "offensive_rebounds"
    t.integer  "defensive_rebounds"
    t.integer  "assists"
    t.integer  "steals"
    t.integer  "blocks"
    t.integer  "turnovers"
    t.integer  "personal_fouls"
    t.integer  "team_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "field_goals"
    t.integer  "field_goals_attempted"
    t.decimal  "field_goal_percentage"
    t.decimal  "three_point_percentage"
    t.decimal  "two_point_percentage"
    t.decimal  "free_throw_percentage"
    t.decimal  "effective_fg_percentage"
    t.integer  "points"
    t.integer  "rebounds"
  end

  create_table "teams", force: :cascade do |t|
    t.string   "team_name"
    t.string   "team_page"
    t.integer  "games_played"
    t.integer  "field_goals"
    t.integer  "field_goals_attempted"
    t.integer  "three_pointers"
    t.integer  "three_pointers_attempted"
    t.integer  "two_pointers"
    t.integer  "two_pointers_attempted"
    t.integer  "free_throws"
    t.integer  "free_throws_attempted"
    t.integer  "offensive_rebounds"
    t.integer  "defensive_rebounds"
    t.integer  "assists"
    t.integer  "steals"
    t.integer  "blocks"
    t.integer  "turnovers"
    t.integer  "personal_fouls"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "team_abbrev"
  end

end
