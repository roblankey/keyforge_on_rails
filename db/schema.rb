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

ActiveRecord::Schema.define(version: 2019_01_06_205700) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "pgcrypto"
  enable_extension "plpgsql"

  create_table "archons", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "name"
    t.string "set"
    t.string "image_url"
    t.uuid "house_one_id"
    t.uuid "house_two_id"
    t.uuid "house_three_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["house_one_id"], name: "index_archons_on_house_one_id"
    t.index ["house_three_id"], name: "index_archons_on_house_three_id"
    t.index ["house_two_id"], name: "index_archons_on_house_two_id"
  end

  create_table "cards", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "name"
    t.text "body"
    t.string "image_url"
    t.string "card_type"
    t.string "subtype_1"
    t.string "subtype_2"
    t.boolean "maverick", default: false
    t.uuid "house_id"
    t.uuid "archon_id"
    t.text "flavor_text"
    t.integer "bonus_aember", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["archon_id"], name: "index_cards_on_archon_id"
    t.index ["house_id"], name: "index_cards_on_house_id"
  end

  create_table "houses", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "name", null: false
    t.string "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_houses_on_name"
  end

  add_foreign_key "archons", "houses", column: "house_one_id", on_delete: :restrict
  add_foreign_key "archons", "houses", column: "house_three_id", on_delete: :restrict
  add_foreign_key "archons", "houses", column: "house_two_id", on_delete: :restrict
end
