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

ActiveRecord::Schema.define(version: 2019_12_12_231542) do

  create_table "artifacts", force: :cascade do |t|
    t.string "name"
    t.integer "points"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "player_artifacts", force: :cascade do |t|
    t.integer "player_id"
    t.integer "artifact_id"
  end

  create_table "player_riddles", force: :cascade do |t|
    t.integer "player_id"
    t.integer "riddle_id"
  end

  create_table "players", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "riddles", force: :cascade do |t|
    t.string "name"
    t.string "riddle_text"
    t.string "correct"
    t.string "wrong"
    t.integer "points"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
