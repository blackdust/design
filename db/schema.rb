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

ActiveRecord::Schema.define(version: 20150611091709) do

  create_table "answers", force: :cascade do |t|
    t.string   "user_id"
    t.string   "words"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "carts", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "title"
    t.integer  "price"
    t.integer  "quantity"
    t.integer  "user_id"
  end

  create_table "classifybooks", force: :cascade do |t|
    t.string   "condition"
    t.string   "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "needs", force: :cascade do |t|
    t.string   "user_id"
    t.string   "description"
    t.string   "image_urls"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "tags"
    t.boolean  "solve"
    t.integer  "number"
    t.string   "title"
  end

  create_table "orders", force: :cascade do |t|
    t.string   "information"
    t.integer  "total_price"
    t.string   "phonenumber"
    t.string   "address"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.decimal  "price"
    t.string   "subject"
    t.string   "image"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "serchbooknames", force: :cascade do |t|
    t.string   "word"
    t.string   "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.string   "password_confirmation"
    t.string   "password_digest"
    t.string   "phone"
    t.string   "logo"
    t.float    "money"
  end

end
