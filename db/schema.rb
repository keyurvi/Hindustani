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

ActiveRecord::Schema.define(version: 2019_03_27_181052) do

  create_table "children", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "children_id"
    t.integer "user_id"
    t.string "child_name"
    t.integer "child_aadhar_no"
    t.date "child_birth_date"
    t.string "child_fathers_name"
    t.string "child_mothers_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cruds", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "models", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_models_on_email", unique: true
    t.index ["reset_password_token"], name: "index_models_on_reset_password_token", unique: true
  end

  create_table "parents", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "parent_id"
    t.integer "user_id"
    t.string "Parent"
    t.string "father_name"
    t.string "mother_name"
    t.integer "father_aadhar_no"
    t.integer "mother_aadhar_no"
    t.date "father_birth_date"
    t.date "mother_birth_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.integer "aadhar_number"
    t.date "bdate"
    t.string "father_name"
    t.string "mother_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "children"
    t.integer "father_aadhar_number"
    t.date "father_bdate"
    t.integer "mother_aadhar_number"
    t.date "mother_bdate"
    t.integer "children_aadhar_number"
    t.date "children_bdate"
  end

end
