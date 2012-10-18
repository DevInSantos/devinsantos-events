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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20121018182124) do

  create_table "events", :force => true do |t|
    t.string   "name",        :null => false
    t.date     "date",        :null => false
    t.text     "description"
    t.string   "place",       :null => false
    t.string   "address",     :null => false
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "events", ["date"], :name => "index_events_on_date"
  add_index "events", ["name"], :name => "index_events_on_name", :unique => true

  create_table "events_speakers", :id => false, :force => true do |t|
    t.integer "speaker_id"
    t.integer "event_id"
  end

  add_index "events_speakers", ["event_id"], :name => "index_events_speakers_on_event_id"
  add_index "events_speakers", ["speaker_id"], :name => "index_events_speakers_on_speaker_id"

  create_table "rooms", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "speakers", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.string   "company"
    t.string   "email"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "sponsors", :force => true do |t|
    t.string   "name"
    t.string   "logo_url"
    t.string   "type"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "talks", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "link"
    t.datetime "horary"
    t.integer  "speaker_id"
    t.integer  "room_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "talks", ["room_id"], :name => "index_talks_on_room_id"
  add_index "talks", ["speaker_id"], :name => "index_talks_on_speaker_id"

  add_foreign_key "events_speakers", "events", :name => "events_speakers_event_id_fk"
  add_foreign_key "events_speakers", "speakers", :name => "events_speakers_speaker_id_fk"

  add_foreign_key "talks", "rooms", :name => "talks_room_id_fk"
  add_foreign_key "talks", "speakers", :name => "talks_speaker_id_fk"

end
