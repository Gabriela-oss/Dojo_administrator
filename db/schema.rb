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

ActiveRecord::Schema.define(version: 2021_04_22_210906) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "judokas", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "first_name", null: false
    t.string "middle_name"
    t.string "last_name", null: false
    t.string "surname", null: false
    t.date "date_of_birth", null: false
    t.string "id_type", null: false
    t.string "nationality", null: false
    t.string "id_card", null: false
    t.string "address", null: false
    t.integer "phone_number", null: false
    t.string "parental_or_responsibility", null: false
    t.date "start_date", null: false
    t.string "photo", null: false
    t.boolean "active", default: true, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_judokas_on_email", unique: true
    t.index ["reset_password_token"], name: "index_judokas_on_reset_password_token", unique: true
  end

  create_table "senseis", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "first_name", null: false
    t.string "middle_name"
    t.string "last_name", null: false
    t.string "surname", null: false
    t.string "id_type", null: false
    t.string "nationality", null: false
    t.string "id_card", null: false
    t.integer "phone_number", null: false
    t.string "photo", null: false
    t.boolean "active", default: true, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_senseis_on_email", unique: true
    t.index ["reset_password_token"], name: "index_senseis_on_reset_password_token", unique: true
  end

end
