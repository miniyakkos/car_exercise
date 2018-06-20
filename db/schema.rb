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

ActiveRecord::Schema.define(version: 2018_06_20_172054) do

  create_table "cars", force: :cascade do |t|
    t.string "model", limit: 50, null: false
    t.string "make", limit: 50, null: false
    t.string "color", limit: 50, null: false
    t.decimal "mileage", precision: 10, scale: 2
    t.string "owner", limit: 50
    t.boolean "is_for_sale"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ownerships", force: :cascade do |t|
    t.integer "person_id"
    t.integer "car_id"
    t.date "sale_date"
    t.decimal "sale_price", precision: 10, scale: 2
    t.decimal "mileage", precision: 10, scale: 2
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["car_id"], name: "index_ownerships_on_car_id"
    t.index ["person_id"], name: "index_ownerships_on_person_id"
  end

  create_table "people", force: :cascade do |t|
    t.string "name", null: false
    t.string "email", limit: 50
    t.string "phone", limit: 20
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
