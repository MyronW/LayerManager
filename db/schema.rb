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

ActiveRecord::Schema.define(version: 20140316204358) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cadence_purposes", force: true do |t|
    t.string   "name"
    t.integer  "number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "colors", force: true do |t|
    t.string   "name"
    t.string   "hex"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "displays", force: true do |t|
    t.string   "name"
    t.integer  "stipple_id"
    t.integer  "fill_id"
    t.integer  "border_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "layers", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "gds_number"
    t.integer  "gds_purpose"
    t.integer  "display"
    t.integer  "cadence_number"
    t.integer  "cadence_purpose"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "purposes", force: true do |t|
    t.string   "name"
    t.integer  "number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "stipples", force: true do |t|
    t.string   "name"
    t.text     "pattern"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
