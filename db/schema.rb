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

ActiveRecord::Schema.define(version: 20150218101937) do

  create_table "events", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "proposed_date_id"
  end

  add_index "events", ["proposed_date_id"], name: "index_events_on_proposed_date_id"

  create_table "join_lists", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  add_index "join_lists", ["user_id"], name: "index_join_lists_on_user_id"

  create_table "proposed_dates", force: true do |t|
    t.date     "proposed_date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "join_list_id"
  end

  add_index "proposed_dates", ["join_list_id"], name: "index_proposed_dates_on_join_list_id"

  create_table "users", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
