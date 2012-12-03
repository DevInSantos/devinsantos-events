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

ActiveRecord::Schema.define(:version => 20121203090848) do

  create_table "events", :force => true do |t|
    t.string   "name",                                       :null => false
    t.datetime "date",                                       :null => false
    t.text     "description"
    t.string   "place",                                      :null => false
    t.string   "address",                                    :null => false
    t.datetime "created_at",                                 :null => false
    t.datetime "updated_at",                                 :null => false
    t.string   "url"
    t.datetime "published_at"
    t.decimal  "price",        :precision => 8, :scale => 2
  end

  add_index "events", ["date"], :name => "index_events_on_date"
  add_index "events", ["name"], :name => "index_events_on_name", :unique => true

  create_table "events_speakers", :id => false, :force => true do |t|
    t.integer "speaker_id"
    t.integer "event_id"
  end

  add_index "events_speakers", ["event_id"], :name => "index_events_speakers_on_event_id"
  add_index "events_speakers", ["speaker_id"], :name => "index_events_speakers_on_speaker_id"

  create_table "intervals", :force => true do |t|
    t.string   "description"
    t.datetime "horary"
    t.integer  "event_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "rails_admin_histories", :force => true do |t|
    t.text     "message"
    t.string   "username"
    t.integer  "item"
    t.string   "table"
    t.integer  "month",      :limit => 2
    t.integer  "year",       :limit => 8
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
  end

  add_index "rails_admin_histories", ["item", "table", "month", "year"], :name => "index_rails_admin_histories"

  create_table "rooms", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "event_id"
  end

  add_index "rooms", ["event_id"], :name => "index_rooms_on_event_id"

  create_table "speakers", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.string   "company"
    t.string   "email"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "twitter"
  end

  create_table "sponsors", :force => true do |t|
    t.string   "name"
    t.string   "logo_url"
    t.string   "sponsorship_type"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.integer  "event_id"
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

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  add_foreign_key "events_speakers", "events", :name => "events_speakers_event_id_fk"
  add_foreign_key "events_speakers", "speakers", :name => "events_speakers_speaker_id_fk"

  add_foreign_key "rooms", "events", :name => "rooms_event_id_fk"

  add_foreign_key "sponsors", "events", :name => "sponsors_event_id_fk"

  add_foreign_key "talks", "rooms", :name => "talks_room_id_fk"
  add_foreign_key "talks", "speakers", :name => "talks_speaker_id_fk"

end
