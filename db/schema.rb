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

ActiveRecord::Schema.define(version: 20150827022825) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: true do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree

  create_table "admin_users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true, using: :btree
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true, using: :btree

  create_table "agencies", force: true do |t|
    t.string   "title"
    t.string   "address"
    t.string   "city"
    t.string   "zip"
    t.string   "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "agencies_receivers", force: true do |t|
    t.integer "agency_id"
    t.integer "receiver_id"
  end

  add_index "agencies_receivers", ["agency_id"], name: "index_agencies_receivers_on_agency_id", using: :btree
  add_index "agencies_receivers", ["receiver_id"], name: "index_agencies_receivers_on_receiver_id", using: :btree

  create_table "agencies_users", force: true do |t|
    t.integer "agency_id"
    t.integer "user_id"
  end

  add_index "agencies_users", ["agency_id"], name: "index_agencies_users_on_agency_id", using: :btree
  add_index "agencies_users", ["user_id"], name: "index_agencies_users_on_user_id", using: :btree

  create_table "alerts", force: true do |t|
    t.integer  "tone_set_id"
    t.string   "notes"
    t.string   "address"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "alerts", ["tone_set_id"], name: "index_alerts_on_tone_set_id", using: :btree

  create_table "delayed_jobs", force: true do |t|
    t.integer  "priority",   default: 0, null: false
    t.integer  "attempts",   default: 0, null: false
    t.text     "handler",                null: false
    t.text     "last_error"
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string   "locked_by"
    t.string   "queue"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "delayed_jobs", ["priority", "run_at"], name: "delayed_jobs_priority", using: :btree

  create_table "event_types", force: true do |t|
    t.integer  "alert_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "event_types", ["alert_id"], name: "index_event_types_on_alert_id", using: :btree

  create_table "receivers", force: true do |t|
    t.string   "location"
    t.float    "frequency"
    t.integer  "user_id"
    t.float    "latitude"
    t.float    "longitude"
    t.float    "haat"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "common_name"
  end

  add_index "receivers", ["user_id"], name: "index_receivers_on_user_id", using: :btree

  create_table "receivers_tone_sets", force: true do |t|
    t.integer "receiver_id"
    t.integer "tone_set_id"
  end

  add_index "receivers_tone_sets", ["receiver_id"], name: "index_receivers_tone_sets_on_receiver_id", using: :btree
  add_index "receivers_tone_sets", ["tone_set_id"], name: "index_receivers_tone_sets_on_tone_set_id", using: :btree

  create_table "tone_sets", force: true do |t|
    t.float    "a_tone"
    t.float    "b_tone"
    t.float    "long_tone"
    t.float    "a_tone_time"
    t.float    "b_tone_time"
    t.float    "long_tone_time"
    t.integer  "agency_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tone_sets", ["agency_id"], name: "index_tone_sets_on_agency_id", using: :btree

  create_table "user_alert_methods", force: true do |t|
    t.integer  "method_type"
    t.string   "address"
    t.integer  "user_id"
    t.integer  "agency_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "user_alert_methods", ["agency_id"], name: "index_user_alert_methods_on_agency_id", using: :btree
  add_index "user_alert_methods", ["user_id"], name: "index_user_alert_methods_on_user_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "username"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["username"], name: "index_users_on_username", unique: true, using: :btree

end
