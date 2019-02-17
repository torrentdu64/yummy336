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

ActiveRecord::Schema.define(version: 20190217041422) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.bigint "resource_id"
    t.string "author_type"
    t.bigint "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "advertises", force: :cascade do |t|
    t.string "title"
    t.string "web_url"
    t.bigint "girl_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["girl_id"], name: "index_advertises_on_girl_id"
  end

  create_table "girls", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "age"
    t.bigint "shop_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "photo_one"
    t.string "photo_two"
    t.string "photo_three"
    t.string "photo_four"
    t.string "photo_five"
    t.string "photo_six"
    t.string "photo_seven"
    t.string "photo_eight"
    t.string "photo_nine"
    t.string "photo_ten"
    t.json "services", default: "{}", null: false
    t.string "origin"
    t.text "service"
    t.string "phone"
    t.string "size"
    t.string "height"
    t.string "weight"
    t.string "bust"
    t.string "hair"
    t.index ["shop_id"], name: "index_girls_on_shop_id"
  end

  create_table "hours", force: :cascade do |t|
    t.string "day"
    t.time "open_hour"
    t.time "close_hour"
    t.date "date"
    t.bigint "shop_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["shop_id"], name: "index_hours_on_shop_id"
  end

  create_table "shops", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "address"
    t.string "phone"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "photo_one"
    t.float "latitude"
    t.float "longitude"
    t.index ["user_id"], name: "index_shops_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin", default: false, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "advertises", "girls"
  add_foreign_key "girls", "shops"
  add_foreign_key "hours", "shops"
  add_foreign_key "shops", "users"
end
