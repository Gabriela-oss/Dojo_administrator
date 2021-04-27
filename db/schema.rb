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

ActiveRecord::Schema.define(version: 2021_04_23_183945) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "courses", force: :cascade do |t|
    t.bigint "dojo_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["dojo_id"], name: "index_courses_on_dojo_id"
  end

  create_table "dojos", force: :cascade do |t|
    t.string "name", null: false
    t.string "email", null: false
    t.string "address", null: false
    t.boolean "active", default: true, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "judoka_courses", force: :cascade do |t|
    t.bigint "judoka_id", null: false
    t.bigint "course_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["course_id"], name: "index_judoka_courses_on_course_id"
    t.index ["judoka_id"], name: "index_judoka_courses_on_judoka_id"
  end

  create_table "judokas", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "name", null: false
    t.string "last_name", null: false
    t.string "surname", null: false
    t.date "date_of_birth", null: false
    t.string "id_type", null: false
    t.string "nationality", null: false
    t.string "id_card", null: false
    t.string "address", null: false
    t.string "phone_number", null: false
    t.string "parental_or_responsibility", null: false
    t.date "start_date", null: false
    t.string "photo", null: false
    t.boolean "active", default: true, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "dojo_id", null: false
    t.index ["dojo_id"], name: "index_judokas_on_dojo_id"
    t.index ["email"], name: "index_judokas_on_email", unique: true
    t.index ["reset_password_token"], name: "index_judokas_on_reset_password_token", unique: true
  end

  create_table "sensei_courses", force: :cascade do |t|
    t.bigint "sensei_id", null: false
    t.bigint "course_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["course_id"], name: "index_sensei_courses_on_course_id"
    t.index ["sensei_id"], name: "index_sensei_courses_on_sensei_id"
  end

  create_table "sensei_dojos", force: :cascade do |t|
    t.bigint "sensei_id", null: false
    t.bigint "dojo_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["dojo_id"], name: "index_sensei_dojos_on_dojo_id"
    t.index ["sensei_id"], name: "index_sensei_dojos_on_sensei_id"
  end

  create_table "senseis", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "name", null: false
    t.string "last_name", null: false
    t.string "surname", null: false
    t.string "id_type", null: false
    t.string "nationality", null: false
    t.string "id_card", null: false
    t.string "phone_number", null: false
    t.string "photo", null: false
    t.boolean "active", default: true, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_senseis_on_email", unique: true
    t.index ["reset_password_token"], name: "index_senseis_on_reset_password_token", unique: true
  end

  add_foreign_key "courses", "dojos"
  add_foreign_key "judoka_courses", "courses"
  add_foreign_key "judoka_courses", "judokas"
  add_foreign_key "judokas", "dojos"
  add_foreign_key "sensei_courses", "courses"
  add_foreign_key "sensei_courses", "senseis"
  add_foreign_key "sensei_dojos", "dojos"
  add_foreign_key "sensei_dojos", "senseis"
end
