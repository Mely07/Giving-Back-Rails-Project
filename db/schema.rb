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

ActiveRecord::Schema.define(version: 2020_06_03_025712) do

  create_table "beneficiaries", force: :cascade do |t|
    t.string "recipient"
    t.string "city"
    t.string "state"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "businesses", force: :cascade do |t|
    t.string "name"
    t.string "sector"
    t.string "headquarters"
    t.string "website"
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "philanthropic_initiatives", force: :cascade do |t|
    t.string "recipient"
    t.string "city"
    t.string "state"
    t.integer "business_id"
    t.integer "beneficiary_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end