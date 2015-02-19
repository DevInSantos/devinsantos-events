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

ActiveRecord::Schema.define(version: 20131019194619) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "events", force: :cascade do |t|
    t.string   "name",                                 null: false
    t.datetime "date",                                 null: false
    t.text     "description"
    t.string   "place",                                null: false
    t.string   "address",                              null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "url"
    t.datetime "published_at"
    t.decimal  "price",        precision: 8, scale: 2
  end

  add_index "events", ["date"], name: "index_events_on_date", using: :btree
  add_index "events", ["name"], name: "index_events_on_name", unique: true, using: :btree

  create_table "events_speakers", id: false, force: :cascade do |t|
    t.integer "speaker_id"
    t.integer "event_id"
  end

  add_index "events_speakers", ["event_id"], name: "index_events_speakers_on_event_id", using: :btree
  add_index "events_speakers", ["speaker_id"], name: "index_events_speakers_on_speaker_id", using: :btree

  create_table "intervals", force: :cascade do |t|
    t.string   "description"
    t.datetime "horary"
    t.integer  "event_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "intervals", ["event_id"], name: "index_intervals_on_event_id", using: :btree

  create_table "rails_admin_histories", force: :cascade do |t|
    t.text     "message"
    t.string   "username"
    t.integer  "item"
    t.string   "table"
    t.integer  "month",      limit: 2
    t.integer  "year",       limit: 8
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rails_admin_histories", ["item", "table", "month", "year"], name: "index_rails_admin_histories", using: :btree

  create_table "rooms", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "event_id"
    t.integer  "priority"
  end

  add_index "rooms", ["event_id"], name: "index_rooms_on_event_id", using: :btree
  add_index "rooms", ["priority"], name: "index_rooms_on_priority", using: :btree

  create_table "speakers", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "company"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "twitter"
  end

  create_table "sponsors", force: :cascade do |t|
    t.string   "name"
    t.string   "logo_url"
    t.string   "sponsorship_type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "event_id"
  end

  create_table "talks", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "link"
    t.datetime "horary"
    t.integer  "speaker_id"
    t.integer  "room_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "talks", ["room_id"], name: "index_talks_on_room_id", using: :btree
  add_index "talks", ["speaker_id"], name: "index_talks_on_speaker_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

