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

ActiveRecord::Schema.define(version: 20160322103400) do

  create_table "customers", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "phno",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "logins", force: :cascade do |t|
    t.string   "user_name",  limit: 255
    t.string   "password",   limit: 255
    t.string   "phone_no",   limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "role",       limit: 255
  end

  create_table "movies", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "director",   limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "signups", force: :cascade do |t|
    t.string   "user_name",  limit: 255
    t.string   "password",   limit: 255
    t.string   "email",      limit: 255
    t.string   "phone_no",   limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "role",       limit: 255
  end

  create_table "theatre_details", force: :cascade do |t|
    t.integer  "theatre_id",    limit: 4
    t.text     "address",       limit: 65535
    t.integer  "seat_capacity", limit: 4
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "theatres", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "owner",      limit: 255
    t.integer  "movie_id",   limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "tickets", force: :cascade do |t|
    t.integer  "theatre_id",  limit: 4
    t.integer  "customer_id", limit: 4
    t.integer  "seat_no",     limit: 4
    t.integer  "price",       limit: 4
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

end
