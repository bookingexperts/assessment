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

ActiveRecord::Schema[7.0].define(version: 2023_03_30_071700) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.bigint "park_id", null: false
    t.bigint "customer_id", null: false
    t.string "name", null: false
    t.string "email", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_bookings_on_customer_id"
    t.index ["park_id"], name: "index_bookings_on_park_id"
  end

  create_table "customers", force: :cascade do |t|
    t.bigint "organization_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["organization_id"], name: "index_customers_on_organization_id"
  end

  create_table "organizations", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "parks", force: :cascade do |t|
    t.bigint "organization_id", null: false
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["organization_id"], name: "index_parks_on_organization_id"
  end

  create_table "rentables", force: :cascade do |t|
    t.bigint "park_id", null: false
    t.string "name", null: false
    t.string "address", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["park_id"], name: "index_rentables_on_park_id"
  end

  create_table "reservations", force: :cascade do |t|
    t.bigint "park_id", null: false
    t.bigint "booking_id", null: false
    t.bigint "rentable_id", null: false
    t.date "start_date", null: false
    t.date "end_date", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["booking_id"], name: "index_reservations_on_booking_id"
    t.index ["park_id"], name: "index_reservations_on_park_id"
    t.index ["rentable_id"], name: "index_reservations_on_rentable_id"
  end

  add_foreign_key "bookings", "customers"
  add_foreign_key "bookings", "parks"
  add_foreign_key "customers", "organizations"
  add_foreign_key "parks", "organizations"
  add_foreign_key "rentables", "parks"
  add_foreign_key "reservations", "bookings"
  add_foreign_key "reservations", "parks"
  add_foreign_key "reservations", "rentables"
end
