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

ActiveRecord::Schema.define(version: 20140510232413) do

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
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "fill_color_id"
    t.integer  "border_color_id"
  end

  create_table "layers", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "gds_number"
    t.integer  "gds_purpose"
    t.integer  "cadence_number"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "display_id"
    t.integer  "cadence_purpose_id"
  end

  create_table "pdk_layers", id: false, force: true do |t|
    t.integer "pdk_id"
    t.integer "layer_id"
  end

  add_index "pdk_layers", ["pdk_id", "layer_id"], name: "index_pdk_layers_on_pdk_id_and_layer_id"

  create_table "pdks", force: true do |t|
    t.string   "name"
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
