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

ActiveRecord::Schema.define(version: 20150821065223) do

  create_table "brands", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "slug",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "slug",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "cosmetic_ingredients", force: :cascade do |t|
    t.integer  "ingredient_id",    limit: 4
    t.integer  "cosmetic_id",      limit: 4
    t.integer  "ingredient_order", limit: 4
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "cosmetics", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.integer  "brand_id",    limit: 4
    t.integer  "category_id", limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "ingredients", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "similarities", force: :cascade do |t|
    t.integer  "subjected_cosmetic_id", limit: 4
    t.integer  "cosmetic_id",           limit: 4
    t.float    "value",                 limit: 24
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.integer  "similarity_order",      limit: 4
  end

  add_index "similarities", ["subjected_cosmetic_id"], name: "index_similarities_on_subjected_cosmetic_id", using: :btree

  create_table "stores", force: :cascade do |t|
    t.integer  "cosmetic_id", limit: 4
    t.integer  "price",       limit: 4
    t.string   "store_name",  limit: 255
    t.string   "url",         limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name",            limit: 255
    t.string   "email",           limit: 255
    t.string   "password_digest", limit: 255
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.string   "remember_token",  limit: 255
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["remember_token"], name: "index_users_on_remember_token", using: :btree

end
