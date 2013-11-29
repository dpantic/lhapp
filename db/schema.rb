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

ActiveRecord::Schema.define(version: 20131128235052) do

  create_table "aircraft_documents", force: true do |t|
    t.string   "operator"
    t.string   "ac_type"
    t.string   "document"
    t.string   "revision"
    t.string   "rev_checked"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "amm_o2_services", force: true do |t|
    t.string   "ac_type"
    t.string   "operator"
    t.string   "system"
    t.string   "job"
    t.string   "amm_referenz"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "amms", force: true do |t|
    t.string   "ac_type"
    t.string   "mm_referenz"
    t.string   "bauteil"
    t.string   "eff"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cmm_revisions", force: true do |t|
    t.string   "ac_type"
    t.string   "type"
    t.string   "manufacturer"
    t.string   "part_number"
    t.string   "model"
    t.string   "cmm"
    t.string   "revision_date"
    t.string   "issue"
    t.string   "rev_checked"
    t.string   "not_in_use"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "consumable_materials", force: true do |t|
    t.string   "product_type"
    t.string   "description"
    t.string   "add_infos"
    t.string   "mat_nr"
    t.string   "part_number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ipc_airbuses", force: true do |t|
    t.string   "ac_type"
    t.string   "ata"
    t.string   "system"
    t.string   "description"
    t.string   "fin"
    t.string   "add_infos"
    t.string   "part_number"
    t.string   "add_material_info"
    t.string   "ipc"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ipc_all_acs", force: true do |t|
    t.string   "system"
    t.string   "description"
    t.string   "add_infos"
    t.string   "part_number"
    t.string   "mat_nr"
    t.string   "add_material_info"
    t.string   "info"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ipc_boeings", force: true do |t|
    t.string   "ac_type"
    t.string   "ata"
    t.string   "system"
    t.string   "description"
    t.string   "location"
    t.string   "add_infos"
    t.string   "part_number"
    t.string   "add_material_info"
    t.string   "ipc"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ipc_catalogs", force: true do |t|
    t.string   "ac_type"
    t.string   "ata"
    t.string   "system"
    t.string   "fin"
    t.string   "additional_infos"
    t.string   "part_number"
    t.string   "ipc"
    t.string   "main_topic"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ipc_seats", force: true do |t|
    t.string   "manufacturer"
    t.string   "modell_series"
    t.string   "description"
    t.string   "add_infos"
    t.string   "part_number"
    t.string   "add_material_info"
    t.string   "cmm"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ipcs", force: true do |t|
    t.string   "ac_type"
    t.string   "ata"
    t.string   "system"
    t.string   "fin"
    t.string   "additional_infos"
    t.string   "part_number"
    t.string   "ipc"
    t.string   "main_topic"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "microposts", force: true do |t|
    t.string   "content"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "microposts", ["user_id", "created_at"], name: "index_microposts_on_user_id_and_created_at"

  create_table "relationships", force: true do |t|
    t.integer  "follower_id"
    t.integer  "followed_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "relationships", ["followed_id"], name: "index_relationships_on_followed_id"
  add_index "relationships", ["follower_id", "followed_id"], name: "index_relationships_on_follower_id_and_followed_id", unique: true
  add_index "relationships", ["follower_id"], name: "index_relationships_on_follower_id"

  create_table "smp_referenzs", force: true do |t|
    t.string   "spm_ref"
    t.string   "bauteil"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.string   "remember_token"
    t.boolean  "admin"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["remember_token"], name: "index_users_on_remember_token"

end
