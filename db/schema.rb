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

ActiveRecord::Schema.define(version: 2018_11_28_170843) do

  create_table "game_members", id: false, force: :cascade do |t|
    t.integer "games_id"
    t.integer "members_id"
    t.index ["games_id"], name: "index_game_members_on_games_id"
    t.index ["members_id"], name: "index_game_members_on_members_id"
  end

  create_table "games", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
  end

  create_table "members", force: :cascade do |t|
    t.string "name"
    t.string "nickname"
    t.integer "low_score"
    t.integer "high_out_rate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
