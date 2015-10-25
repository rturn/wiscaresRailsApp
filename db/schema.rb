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

ActiveRecord::Schema.define(version: 0) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "events", force: :cascade do |t|
    t.date    "dateEntered"
    t.integer "petID"
  end

  create_table "health_problems", force: :cascade do |t|
    t.date    "dateEntered"
    t.integer "petID"
    t.string  "description",  limit: 160
    t.date    "dateOccurred"
  end

  create_table "medications", force: :cascade do |t|
    t.date    "dateEntered"
    t.integer "petID"
    t.string  "name",        limit: 180
    t.string  "frequency",   limit: 180
  end

  create_table "pets", force: :cascade do |t|
    t.integer "userId"
    t.string  "name",      limit: 80
    t.string  "species",   limit: 80
    t.string  "breed",     limit: 80
    t.string  "gender",    limit: 10
    t.date    "birthDate"
    t.float   "weight"
  end

  create_table "reminders", force: :cascade do |t|
    t.integer "userID"
    t.integer "petID"
    t.string  "description",  limit: 160
    t.date    "dateToRemind"
  end

  create_table "users", force: :cascade do |t|
    t.string "name",     limit: 80
    t.string "password", limit: 80
  end

  create_table "vaccinations", force: :cascade do |t|
    t.date    "dateEntered"
    t.integer "petID"
    t.string  "name",        limit: 180
    t.date    "dateGiven"
  end

  create_table "vets", force: :cascade do |t|
    t.string  "name",    limit: 80
    t.string  "address", limit: 180
    t.string  "contact", limit: 180
    t.integer "userID"
    t.integer "petID"
  end

  create_table "visits", force: :cascade do |t|
    t.date    "dateEntered"
    t.integer "petID"
    t.string  "location",    limit: 180
    t.date    "dateVisited"
  end

  add_foreign_key "events", "pets", column: "petID", name: "fkPetID"
  add_foreign_key "health_problems", "pets", column: "petID", name: "fkPetID"
  add_foreign_key "medications", "pets", column: "petID", name: "fkPetID"
  add_foreign_key "pets", "users", column: "userId", name: "fkUserID"
  add_foreign_key "reminders", "pets", column: "petID", name: "fkPetID"
  add_foreign_key "reminders", "users", column: "userID", name: "fkUserID"
  add_foreign_key "vaccinations", "pets", column: "petID", name: "fkPetID"
  add_foreign_key "vets", "pets", column: "petID", name: "fkPetID"
  add_foreign_key "vets", "users", column: "userID", name: "fkUserID"
  add_foreign_key "visits", "pets", column: "petID", name: "fkPetID"
end
