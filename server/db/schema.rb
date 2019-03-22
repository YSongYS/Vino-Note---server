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

ActiveRecord::Schema.define(version: 2019_03_22_114541) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "logs", force: :cascade do |t|
    t.integer "rating"
    t.boolean "starred"
    t.string "concluding_note"
    t.bigint "user_id"
    t.bigint "wine_id"
    t.bigint "look_id"
    t.bigint "smell_id"
    t.bigint "taste_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["look_id"], name: "index_logs_on_look_id"
    t.index ["smell_id"], name: "index_logs_on_smell_id"
    t.index ["taste_id"], name: "index_logs_on_taste_id"
    t.index ["user_id"], name: "index_logs_on_user_id"
    t.index ["wine_id"], name: "index_logs_on_wine_id"
  end

  create_table "looks", force: :cascade do |t|
    t.string "color"
    t.integer "clarity"
    t.integer "viscosity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "smells", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "level_one"
    t.string "level_two"
    t.string "level_three"
  end

  create_table "tastes", force: :cascade do |t|
    t.integer "sweetness"
    t.integer "acidity"
    t.integer "tannin"
    t.integer "alcohol"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "body"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "nickname"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "wines", force: :cascade do |t|
    t.string "name"
    t.string "variety"
    t.integer "vintage"
    t.string "winery"
    t.string "region"
    t.string "country"
    t.string "price_range"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image"
  end

  add_foreign_key "logs", "looks"
  add_foreign_key "logs", "smells"
  add_foreign_key "logs", "tastes"
  add_foreign_key "logs", "users"
  add_foreign_key "logs", "wines"
end
