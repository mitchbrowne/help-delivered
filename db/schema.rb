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

ActiveRecord::Schema.define(version: 2020_03_29_015026) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "locations", force: :cascade do |t|
    t.float "lat"
    t.float "lng"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "requesters", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "requesters_users", id: false, force: :cascade do |t|
    t.integer "requester_id"
    t.integer "user_id"
  end

  create_table "responders", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "responders_users", id: false, force: :cascade do |t|
    t.integer "responder_id"
    t.integer "user_id"
  end

  create_table "tasks", force: :cascade do |t|
    t.text "name"
    t.text "description"
    t.string "category"
    t.string "urgency"
    t.text "image"
    t.boolean "active", default: true
    t.boolean "use_postcode", default: true
    t.integer "location_id"
    t.integer "requester_id"
    t.integer "responder_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.text "name"
    t.text "email"
    t.text "phone"
    t.integer "postcode"
    t.string "password_digest"
    t.boolean "admin", default: false
    t.text "image"
    t.boolean "is_responder", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
