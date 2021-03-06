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

ActiveRecord::Schema.define(version: 20200730191852) do

  create_table "comments", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "model_id"
    t.text     "c_content"
    t.integer  "c_like"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["model_id"], name: "index_comments_on_model_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "contents", force: :cascade do |t|
    t.string   "name"
    t.date     "published"
    t.string   "country"
    t.float    "rate"
    t.integer  "booking_rate"
    t.integer  "num_of_people"
    t.integer  "rank"
    t.string   "genre"
    t.integer  "running_time"
    t.string   "summary"
    t.string   "people"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "likes", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "models", force: :cascade do |t|
    t.string   "name"
    t.date     "published"
    t.string   "country"
    t.float    "rate"
    t.integer  "booking_rate"
    t.integer  "num_of_people"
    t.integer  "rank"
    t.string   "genre"
    t.integer  "running_time"
    t.string   "summary"
    t.string   "people"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "people", force: :cascade do |t|
    t.string   "name"
    t.string   "intro"
    t.integer  "model_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "role"
  end

  create_table "re_comments", force: :cascade do |t|
    t.integer  "c_id"
    t.string   "re_author"
    t.string   "re_content"
    t.integer  "re_like"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.string   "nickname"
    t.text     "description"
    t.boolean  "admin",                  default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
