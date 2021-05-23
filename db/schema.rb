# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_05_23_173848) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "agencies", force: :cascade do |t|
    t.string "name"
    t.text "summary"
    t.bigint "label_id", null: false
    t.bigint "locale_id", null: false
    t.string "online_address"
    t.string "phone_number"
    t.jsonb "hours"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["label_id"], name: "index_agencies_on_label_id"
    t.index ["locale_id"], name: "index_agencies_on_locale_id"
  end

  create_table "labels", force: :cascade do |t|
    t.string "name"
    t.text "summary"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "locales", force: :cascade do |t|
    t.string "name"
    t.integer "inside"
    t.string "kind"
    t.jsonb "boundary"
    t.date "incorporated_on"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
    t.text "summary"
    t.bigint "agency_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["agency_id"], name: "index_roles_on_agency_id"
  end

  add_foreign_key "agencies", "labels"
  add_foreign_key "agencies", "locales"
  add_foreign_key "roles", "agencies"
end
