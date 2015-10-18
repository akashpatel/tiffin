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

ActiveRecord::Schema.define(version: 20151018061323) do

  create_table "dishes", force: true do |t|
    t.string   "img_url"
    t.string   "name"
    t.text     "desc"
    t.text     "ingredients"
    t.integer  "calories"
    t.integer  "protein"
    t.integer  "sodium"
    t.integer  "carbs"
    t.decimal  "price",         precision: 8, scale: 2
    t.datetime "delivery_date"
    t.datetime "order_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orders", force: true do |t|
    t.integer  "dish_id"
    t.integer  "quantity"
    t.string   "first"
    t.string   "last"
    t.string   "email"
    t.string   "phone"
    t.string   "deliver_to"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "orders", ["dish_id"], name: "index_orders_on_dish_id"

end
