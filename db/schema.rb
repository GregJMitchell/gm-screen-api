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

ActiveRecord::Schema.define(version: 2021_01_29_200230) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "campaigns", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image"
    t.index ["user_id"], name: "index_campaigns_on_user_id"
  end

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.bigint "faction_id"
    t.string "gov_type"
    t.integer "population"
    t.text "description"
    t.bigint "campaign_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["campaign_id"], name: "index_cities_on_campaign_id"
    t.index ["faction_id"], name: "index_cities_on_faction_id"
  end

  create_table "factions", force: :cascade do |t|
    t.string "name"
    t.bigint "campaign_id"
    t.text "description"
    t.string "capitol"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["campaign_id"], name: "index_factions_on_campaign_id"
  end

  create_table "npcs", force: :cascade do |t|
    t.string "name"
    t.text "backstory"
    t.bigint "campaign_id"
    t.string "alignment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["campaign_id"], name: "index_npcs_on_campaign_id"
  end

  create_table "player_characters", force: :cascade do |t|
    t.string "name"
    t.bigint "campaign_id"
    t.text "backstory"
    t.string "class"
    t.string "race"
    t.integer "level"
    t.string "character_sheet_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["campaign_id"], name: "index_player_characters_on_campaign_id"
  end

  create_table "quests", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "rewards"
    t.bigint "campaign_id"
    t.bigint "storyline_id"
    t.bigint "city_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["campaign_id"], name: "index_quests_on_campaign_id"
    t.index ["city_id"], name: "index_quests_on_city_id"
    t.index ["storyline_id"], name: "index_quests_on_storyline_id"
  end

  create_table "storylines", force: :cascade do |t|
    t.string "name"
    t.bigint "campaign_id"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["campaign_id"], name: "index_storylines_on_campaign_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "campaigns", "users"
  add_foreign_key "cities", "campaigns"
  add_foreign_key "cities", "factions"
  add_foreign_key "factions", "campaigns"
  add_foreign_key "npcs", "campaigns"
  add_foreign_key "player_characters", "campaigns"
  add_foreign_key "quests", "campaigns"
  add_foreign_key "quests", "cities"
  add_foreign_key "quests", "storylines"
  add_foreign_key "storylines", "campaigns"
end
