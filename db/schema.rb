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

ActiveRecord::Schema.define(version: 20160404213646) do

  create_table "chattexts", force: :cascade do |t|
    t.string   "sender"
    t.string   "text"
    t.datetime "datatime_static"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "session_id"
  end

  add_index "chattexts", ["session_id"], name: "index_chattexts_on_session_id"

  create_table "sessions", force: :cascade do |t|
    t.string   "name"
    t.boolean  "archive"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
