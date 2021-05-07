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

ActiveRecord::Schema.define(version: 2021_05_07_174548) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "categories_levels", id: false, force: :cascade do |t|
    t.bigint "category_id", null: false
    t.bigint "level_id", null: false
    t.index ["category_id", "level_id"], name: "index_categories_levels_on_category_id_and_level_id"
    t.index ["level_id", "category_id"], name: "index_categories_levels_on_level_id_and_category_id"
  end

  create_table "courses", force: :cascade do |t|
    t.string "name", null: false
    t.text "description", null: false
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

  create_table "judo_tests", force: :cascade do |t|
    t.date "date_of_test", null: false
    t.string "description", null: false
    t.integer "weight", default: 0, null: false
    t.integer "height", default: 0, null: false
    t.integer "course_naveta", null: false
    t.integer "speed", null: false
    t.integer "flexibility", null: false
    t.integer "push_up", null: false
    t.integer "ABS", null: false
    t.integer "vertical_jump", null: false
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
    t.bigint "level_id", null: false
    t.index ["dojo_id"], name: "index_judokas_on_dojo_id"
    t.index ["email"], name: "index_judokas_on_email", unique: true
    t.index ["level_id"], name: "index_judokas_on_level_id"
    t.index ["reset_password_token"], name: "index_judokas_on_reset_password_token", unique: true
  end

  create_table "levels", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
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
    t.bigint "level_id", null: false
    t.bigint "judo_test_id", null: false
    t.index ["email"], name: "index_senseis_on_email", unique: true
    t.index ["judo_test_id"], name: "index_senseis_on_judo_test_id"
    t.index ["level_id"], name: "index_senseis_on_level_id"
    t.index ["reset_password_token"], name: "index_senseis_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "courses", "dojos"
  add_foreign_key "judoka_courses", "courses"
  add_foreign_key "judoka_courses", "judokas"
  add_foreign_key "judokas", "dojos"
  add_foreign_key "judokas", "levels"
  add_foreign_key "sensei_courses", "courses"
  add_foreign_key "sensei_courses", "senseis"
  add_foreign_key "sensei_dojos", "dojos"
  add_foreign_key "sensei_dojos", "senseis"
  add_foreign_key "senseis", "judo_tests"
  add_foreign_key "senseis", "levels"
end
