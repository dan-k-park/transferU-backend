# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_12_22_030216) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "event_profiles", force: :cascade do |t|
    t.bigint "profile_id", null: false
    t.bigint "event_id", null: false
    t.boolean "attending"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["event_id"], name: "index_event_profiles_on_event_id"
    t.index ["profile_id"], name: "index_event_profiles_on_profile_id"
  end

  create_table "events", force: :cascade do |t|
    t.string "name"
    t.string "date"
    t.text "description"
    t.string "location"
    t.integer "attendees"
    t.bigint "category_id", null: false
    t.bigint "school_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["category_id"], name: "index_events_on_category_id"
    t.index ["school_id"], name: "index_events_on_school_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.text "bio"
    t.string "avatarURL"
    t.bigint "school_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id", null: false
    t.index ["school_id"], name: "index_profiles_on_school_id"
    t.index ["user_id"], name: "index_profiles_on_user_id"
  end

  create_table "schools", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "event_profiles", "events"
  add_foreign_key "event_profiles", "profiles"
  add_foreign_key "events", "categories"
  add_foreign_key "events", "schools"
  add_foreign_key "profiles", "schools"
  add_foreign_key "profiles", "users"
end
