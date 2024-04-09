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

ActiveRecord::Schema[7.1].define(version: 2024_03_15_230113) do
  create_table "contacts", force: :cascade do |t|
    t.integer "precert_id", null: false
    t.datetime "contact_date"
    t.integer "duration"
    t.text "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["precert_id"], name: "index_contacts_on_precert_id"
  end

  create_table "diagnoses", force: :cascade do |t|
    t.string "name"
    t.string "icd10"
    t.string "dxtype"
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

  create_table "peer2peers", force: :cascade do |t|
    t.integer "precert_id", null: false
    t.integer "provider_id", null: false
    t.datetime "p2p_date"
    t.integer "duration"
    t.string "peer"
    t.text "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["precert_id"], name: "index_peer2peers_on_precert_id"
    t.index ["provider_id"], name: "index_peer2peers_on_provider_id"
  end

  create_table "precerts", force: :cascade do |t|
    t.string "patientMRN"
    t.integer "service_id"
    t.integer "diagnosis_id"
    t.integer "provider_id"
    t.integer "insurer_id"
    t.integer "status", default: 0
    t.boolean "approved", default: false
    t.string "confirmation"
    t.datetime "submission_date"
    t.datetime "approval_date"
    t.datetime "closed_date"
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
    t.string "last_name"
    t.string "first_name"
    t.string "credentials"
    t.integer "office_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["last_name", "first_name"], name: "index_providers_on_last_name_and_first_name", unique: true
    t.index ["office_id"], name: "index_providers_on_office_id"
  end

  create_table "services", force: :cascade do |t|
    t.string "name"
    t.string "cptcode"
    t.string "servtype"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_services_on_name", unique: true
    t.index ["servtype"], name: "index_services_on_servtype"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "session_token"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.string "role", default: "user"
    t.string "first_name"
    t.string "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["unlock_token"], name: "index_users_on_unlock_token", unique: true
  end

  add_foreign_key "contacts", "precerts"
  add_foreign_key "peer2peers", "precerts"
  add_foreign_key "peer2peers", "providers"
end
