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

ActiveRecord::Schema.define(version: 2019_07_01_194122) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "libraries", force: :cascade do |t|
    t.string "document"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "patient_contact_informations", force: :cascade do |t|
    t.string "email"
    t.string "mobile_phone"
    t.string "home_phone"
    t.string "work_phone"
    t.string "other_phone"
    t.string "address_1"
    t.string "address_2"
    t.string "zipcode"
    t.string "city"
    t.string "state"
    t.bigint "patient_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["patient_id"], name: "index_patient_contact_informations_on_patient_id"
  end

  create_table "patient_emergency_contacts", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "contact_type"
    t.string "relationship"
    t.date "release_of_info"
    t.date "dob"
    t.string "address_1"
    t.string "address_2"
    t.string "country"
    t.string "zipcode"
    t.string "city"
    t.string "state"
    t.string "email"
    t.string "mobile_phone"
    t.string "work_phone"
    t.string "home_phone"
    t.string "other_phone"
    t.text "commet"
    t.bigint "patient_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["patient_id"], name: "index_patient_emergency_contacts_on_patient_id"
  end

  create_table "patients", force: :cascade do |t|
    t.text "comment"
    t.string "first_name"
    t.string "last_name"
    t.string "preferred_name"
    t.date "dob"
    t.string "birth_sex"
    t.string "gender_identity"
    t.string "sexual_orientation"
    t.string "race"
    t.string "languages"
    t.string "marital_status"
    t.string "employment"
    t.boolean "hipaa", default: false, null: false
    t.string "pcp_release"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_patients_on_user_id"
  end

  create_table "user_contact_informations", force: :cascade do |t|
    t.string "address_1"
    t.string "address_2"
    t.string "zipcode"
    t.string "city"
    t.string "state"
    t.string "mobile_phone"
    t.string "home_phone"
    t.string "work_phone"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_user_contact_informations_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "default_location"
    t.string "languages"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "role"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "patient_contact_informations", "patients"
  add_foreign_key "patient_emergency_contacts", "patients"
  add_foreign_key "patients", "users"
  add_foreign_key "user_contact_informations", "users"
end
