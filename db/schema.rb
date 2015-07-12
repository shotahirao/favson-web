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

ActiveRecord::Schema.define(version: 20150711183143) do

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "fb_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "email"
    t.string   "icon"
    t.string   "oauth_token"
    t.time     "oauth_expires_at"
  end

  add_index "users", ["email"], name: "index_users_on_email"
  add_index "users", ["fb_id"], name: "index_users_on_fb_id"
  add_index "users", ["name"], name: "index_users_on_name"
  add_index "users", ["oauth_expires_at"], name: "index_users_on_oauth_expires_at"

end
