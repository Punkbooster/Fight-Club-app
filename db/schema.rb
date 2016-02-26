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

ActiveRecord::Schema.define(version: 20160226125219) do

  create_table "fighters", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "description"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.integer  "experience",         default: 0
    t.integer  "wins",               default: 0
    t.integer  "losses",             default: 0
  end

  create_table "fights", force: :cascade do |t|
    t.integer  "fighter_1_id"
    t.integer  "fighter_2_id"
    t.integer  "winner_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "fights", ["fighter_1_id"], name: "index_fights_on_fighter_1_id"
  add_index "fights", ["fighter_2_id"], name: "index_fights_on_fighter_2_id"
  add_index "fights", ["winner_id"], name: "index_fights_on_winner_id"

  create_table "skills", force: :cascade do |t|
    t.string   "name"
    t.integer  "level"
    t.integer  "fighter_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "skills", ["fighter_id"], name: "index_skills_on_fighter_id"

end
