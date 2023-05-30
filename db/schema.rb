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

ActiveRecord::Schema[7.0].define(version: 2023_05_30_162050) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "employees", force: :cascade do |t|
    t.string "firstname"
    t.string "lastname"
    t.string "registration"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id", null: false
    t.bigint "office_id"
    t.bigint "sectional_id"
    t.bigint "sector_id"
    t.integer "bond"
    t.integer "orderly"
    t.string "middlename"
    t.index ["office_id"], name: "index_employees_on_office_id"
    t.index ["sectional_id"], name: "index_employees_on_sectional_id"
    t.index ["sector_id"], name: "index_employees_on_sector_id"
    t.index ["user_id"], name: "index_employees_on_user_id"
  end

  create_table "line_employees", force: :cascade do |t|
    t.bigint "employee_id"
    t.bigint "timesheet_id"
    t.integer "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["employee_id"], name: "index_line_employees_on_employee_id"
    t.index ["timesheet_id"], name: "index_line_employees_on_timesheet_id"
  end

  create_table "offices", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id", null: false
    t.index ["user_id"], name: "index_offices_on_user_id"
  end

  create_table "sectionals", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id", null: false
    t.index ["user_id"], name: "index_sectionals_on_user_id"
  end

  create_table "sectors", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id", null: false
    t.index ["user_id"], name: "index_sectors_on_user_id"
  end

  create_table "timesheets", force: :cascade do |t|
    t.bigint "sector_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id", null: false
    t.index ["sector_id"], name: "index_timesheets_on_sector_id"
    t.index ["user_id"], name: "index_timesheets_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "firstname"
    t.string "lastname"
    t.string "registration"
    t.integer "role"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "employees", "offices"
  add_foreign_key "employees", "sectionals"
  add_foreign_key "employees", "sectors"
  add_foreign_key "employees", "users"
  add_foreign_key "line_employees", "employees"
  add_foreign_key "line_employees", "timesheets"
  add_foreign_key "offices", "users"
  add_foreign_key "sectionals", "users"
  add_foreign_key "sectors", "users"
  add_foreign_key "timesheets", "sectors"
  add_foreign_key "timesheets", "users"
end
