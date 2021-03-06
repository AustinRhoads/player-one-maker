# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_03_03_181826) do

  create_table "baddies", force: :cascade do |t|
    t.string "name"
    t.float "speed", default: 0.5
    t.integer "height", default: 32
    t.integer "width", default: 32
    t.integer "x_velocity", default: 0
    t.integer "y_velocity", default: 0
    t.integer "game_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["game_id"], name: "index_baddies_on_game_id"
  end

  create_table "games", force: :cascade do |t|
    t.string "name"
    t.float "gravity", default: 1.5
    t.float "friction", default: 0.9
    t.integer "canvas_width", default: 960
    t.integer "canvas_height", default: 560
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "players", force: :cascade do |t|
    t.string "name"
    t.integer "height", default: 32
    t.integer "width", default: 32
    t.float "speed", default: 0.5
    t.integer "jumping_height", default: 20
    t.boolean "jumping", default: true
    t.integer "x_velocity", default: 0
    t.integer "y_velocity", default: 0
    t.integer "x_respawn", default: 100
    t.integer "y_respawn", default: 330
    t.integer "game_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["game_id"], name: "index_players_on_game_id"
  end

  add_foreign_key "baddies", "games"
  add_foreign_key "players", "games"
end
