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

ActiveRecord::Schema.define(version: 2019_10_26_162310) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "organizators", force: :cascade do |t|
    t.string "name"
    t.integer "phone"
    t.string "description"
    t.boolean "admin"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.index ["email"], name: "index_organizators_on_email", unique: true
    t.index ["reset_password_token"], name: "index_organizators_on_reset_password_token", unique: true
  end

  create_table "press_conferences", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.date "date"
    t.time "time"
    t.string "address"
    t.integer "status", default: 0
    t.bigint "organizator_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["organizator_id"], name: "index_press_conferences_on_organizator_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.string "photo"
    t.string "phone"
    t.text "description"
    t.string "social_network"
    t.string "social_network_url"
    t.string "media_name"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_profiles_on_user_id"
  end

  create_table "user_press_conferences", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "press_conference_id"
    t.integer "status", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["press_conference_id"], name: "index_user_press_conferences_on_press_conference_id"
    t.index ["user_id"], name: "index_user_press_conferences_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "lastname"
    t.string "rut"
    t.integer "user_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "press_conferences", "organizators"
  add_foreign_key "profiles", "users"
  add_foreign_key "user_press_conferences", "press_conferences"
  add_foreign_key "user_press_conferences", "users"
end
