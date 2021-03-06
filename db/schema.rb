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

ActiveRecord::Schema.define(version: 20170402043559) do

  create_table "appkeys", force: :cascade do |t|
    t.string   "acl_token"
    t.integer  "role_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["role_id"], name: "index_appkeys_on_role_id"
  end

  create_table "clients", force: :cascade do |t|
    t.integer  "_id"
    t.string   "client_name"
    t.integer  "project_id"
    t.integer  "region_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.boolean  "active"
    t.index ["client_name"], name: "index_clients_on_client_name", unique: true
    t.index ["project_id"], name: "index_clients_on_project_id"
    t.index ["region_id"], name: "index_clients_on_region_id"
  end

  create_table "mudapis", force: :cascade do |t|
    t.string   "app_name"
    t.string   "app_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "projects", force: :cascade do |t|
    t.integer  "_id"
    t.string   "project_name"
    t.string   "project_code"
    t.boolean  "active"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["project_name"], name: "index_projects_on_project_name", unique: true
  end

  create_table "raw_executives", force: :cascade do |t|
    t.string   "month"
    t.integer  "client_id"
    t.float    "revenue"
    t.float    "ebit"
    t.float    "fte"
    t.integer  "ticket"
    t.integer  "sla_scope"
    t.integer  "sla_attain"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_raw_executives_on_client_id"
  end

  create_table "regions", force: :cascade do |t|
    t.integer  "_id"
    t.string   "region_name"
    t.string   "region_code"
    t.string   "region_label"
    t.boolean  "active"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["region_name"], name: "index_regions_on_region_name", unique: true
  end

  create_table "roles", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.integer  "role_id"
    t.boolean  "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["role_id"], name: "index_users_on_role_id"
    t.index ["username"], name: "index_users_on_username", unique: true
  end

end
