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

ActiveRecord::Schema.define(version: 2020_02_25_115309) do

  create_table "mandaras", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.text "subtext1"
    t.text "subtext2"
    t.text "subtext3"
    t.text "subtext4"
    t.text "subtext6"
    t.text "subtext7"
    t.text "subtext8"
    t.text "subtext9"
    t.text "subskill2_1"
    t.text "subskill2_2"
    t.text "subskill2_3"
    t.text "subskill2_4"
    t.text "subskill2_6"
    t.text "subskill2_7"
    t.text "subskill2_8"
    t.text "subskill2_9"
    t.text "subskill3_1"
    t.text "subskill3_2"
    t.text "subskill3_3"
    t.text "subskill3_4"
    t.text "subskill3_6"
    t.text "subskill3_7"
    t.text "subskill3_8"
    t.text "subskill3_9"
    t.text "subskill4_1"
    t.text "subskill4_2"
    t.text "subskill4_3"
    t.text "subskill4_4"
    t.text "subskill4_6"
    t.text "subskill4_7"
    t.text "subskill4_8"
    t.text "subskill4_9"
    t.text "subskill5_1"
    t.text "subskill5_2"
    t.text "subskill5_3"
    t.text "subskill5_4"
    t.text "subskill5_6"
    t.text "subskill5_7"
    t.text "subskill5_8"
    t.text "subskill5_9"
    t.text "subskill6_1"
    t.text "subskill6_2"
    t.text "subskill6_3"
    t.text "subskill6_4"
    t.text "subskill6_6"
    t.text "subskill6_7"
    t.text "subskill6_8"
    t.text "subskill6_9"
    t.text "subskill7_1"
    t.text "subskill7_2"
    t.text "subskill7_3"
    t.text "subskill7_4"
    t.text "subskill7_6"
    t.text "subskill7_7"
    t.text "subskill7_8"
    t.text "subskill7_9"
    t.text "subskill8_1"
    t.text "subskill8_2"
    t.text "subskill8_3"
    t.text "subskill8_4"
    t.text "subskill8_6"
    t.text "subskill8_7"
    t.text "subskill8_8"
    t.text "subskill8_9"
    t.text "subskill9_1"
    t.text "subskill9_2"
    t.text "subskill9_3"
    t.text "subskill9_4"
    t.text "subskill9_6"
    t.text "subskill9_7"
    t.text "subskill9_8"
    t.text "subskill9_9"
    t.boolean "checkbox"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "text"
  end

  create_table "months", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "month"
    t.integer "target"
    t.text "text"
    t.text "Feedback"
    t.boolean "checkbox"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "goal"
  end

  create_table "posts", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.text "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "Feedback"
    t.text "business"
    t.text "tomorrow"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "weeks", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "week"
    t.text "text"
    t.text "Feedback"
    t.boolean "checkbox"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "years", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "year"
    t.string "title"
    t.text "kgi"
    t.text "kpi"
    t.text "kdi"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
