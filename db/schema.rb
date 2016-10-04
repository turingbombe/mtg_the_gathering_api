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

ActiveRecord::Schema.define(version: 20161004165246) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "card_sets", force: :cascade do |t|
    t.string   "code"
    t.string   "name"
    t.string   "release_date"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "cards", force: :cascade do |t|
    t.integer  "multiverse_id"
    t.string   "artist"
    t.integer  "cmc"
    t.text     "colors",        default: [],              array: true
    t.string   "flavor"
    t.string   "image_url"
    t.string   "mana_cost"
    t.string   "name"
    t.string   "number"
    t.string   "original_text"
    t.string   "original_type"
    t.string   "power"
    t.text     "printings",     default: [],              array: true
    t.string   "rarity"
    t.string   "set"
    t.string   "set_name"
    t.text     "subtypes",      default: [],              array: true
    t.string   "card_text"
    t.string   "toughness"
    t.string   "card_type"
    t.text     "types",         default: [],              array: true
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.integer  "card_set_id"
  end

  create_table "collections", force: :cascade do |t|
    t.string   "name"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "deck_cards", force: :cascade do |t|
    t.integer  "deck_id"
    t.integer  "card_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "decks", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "collection_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "ownerships", force: :cascade do |t|
    t.integer  "collection_id"
    t.integer  "card_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "password_digest"
    t.string   "email"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
