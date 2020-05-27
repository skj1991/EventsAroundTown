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

ActiveRecord::Schema.define(version: 20200520004546) do

  create_table "cities", force: :cascade do |t|
    t.string  "city"
    t.integer "user_id"
  end

  create_table "events", force: :cascade do |t|
    t.string  "name"
    t.string  "event_url"
    t.string  "info"
    t.date    "date"
    t.time    "time"
    t.string  "venue"
    t.text    "address"
    t.date    "sales_start"
    t.date    "sales_end"
    t.float   "price_min"
    t.float   "price_max"
    t.string  "images"
    t.integer "city_id"
  end

  create_table "user_events", force: :cascade do |t|
    t.integer "user_id"
    t.integer "event_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "email"
  end

end
