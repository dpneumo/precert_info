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

ActiveRecord::Schema[7.1].define(version: 2024_02_11_174536) do
  create_table "contacts", force: :cascade do |t|
    t.integer "precert_id", null: false
    t.datetime "contact_date", null: false
    t.datetime "contact_time", null: false
    t.integer "duration"
    t.text "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["precert_id"], name: "index_contacts_on_precert_id"
  end

  create_table "diagnoses", force: :cascade do |t|
    t.string "name"
    t.string "icd10"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["icd10"], name: "index_diagnoses_on_icd10", unique: true
    t.index ["name"], name: "index_diagnoses_on_name", unique: true
  end

  create_table "insurers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_insurers_on_name", unique: true
  end

  create_table "offices", force: :cascade do |t|
    t.string "name", null: false
    t.string "street1", null: false
    t.string "street2"
    t.string "city", null: false
    t.string "state", default: "TX"
    t.string "zip", null: false
    t.string "ph_main"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "precerts", force: :cascade do |t|
    t.string "patientMRN"
    t.integer "service_id"
    t.integer "diagnosis_id"
    t.integer "provider_id"
    t.integer "insurer_id"
    t.datetime "submitted"
    t.datetime "approved"
    t.string "confirmation"
    t.text "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["diagnosis_id"], name: "index_precerts_on_diagnosis_id"
    t.index ["insurer_id"], name: "index_precerts_on_insurer_id"
    t.index ["patientMRN"], name: "index_precerts_on_patientMRN"
    t.index ["provider_id"], name: "index_precerts_on_provider_id"
    t.index ["service_id"], name: "index_precerts_on_service_id"
  end

  create_table "providers", force: :cascade do |t|
    t.string "name"
    t.integer "office_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_providers_on_name", unique: true
    t.index ["office_id"], name: "index_providers_on_office_id"
  end

  create_table "services", force: :cascade do |t|
    t.string "name"
    t.string "servtype"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_services_on_name", unique: true
    t.index ["servtype"], name: "index_services_on_servtype"
  end

  add_foreign_key "contacts", "precerts"
end
