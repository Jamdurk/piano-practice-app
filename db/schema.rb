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

ActiveRecord::Schema[7.2].define(version: 2026_08_06_114230) do
  create_table "note_events", force: :cascade do |t|
    t.integer "practice_session_id", null: false
    t.integer "note_number"
    t.integer "velocity"
    t.integer "timestamp_ms"
    t.integer "duration_ms"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["practice_session_id"], name: "index_note_events_on_practice_session_id"
  end

  create_table "practice_sessions", force: :cascade do |t|
    t.string "name"
    t.datetime "started_at"
    t.integer "duration_seconds"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "note_events", "practice_sessions"
end
