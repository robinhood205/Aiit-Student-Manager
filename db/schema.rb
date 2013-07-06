# encoding: UTF-8
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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130706063647) do

  create_table "aiit_members", :force => true do |t|
    t.string   "family_name"
    t.string   "given_name"
    t.date     "birthday"
    t.string   "sex"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "association_pbls", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "association_students", :force => true do |t|
    t.string   "name"
    t.integer  "association_pbl_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "association_teachers", :force => true do |t|
    t.string   "name"
    t.integer  "association_pbl_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "guarantors", :force => true do |t|
    t.string   "name"
    t.string   "namekata"
    t.integer  "zip"
    t.string   "address"
    t.integer  "tel"
    t.string   "relationship"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "mibuns", :force => true do |t|
    t.string   "status"
    t.string   "absence_time"
    t.string   "absence_reason"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "privacies", :force => true do |t|
    t.string   "name"
    t.string   "kana_name"
    t.string   "eng_name"
    t.string   "gender"
    t.date     "birthday"
    t.string   "birthplace"
    t.string   "zip_code"
    t.string   "city"
    t.string   "block"
    t.string   "address"
    t.string   "building"
    t.string   "tel"
    t.string   "mobile"
    t.string   "pc_email"
    t.string   "mobile_email"
    t.string   "graduated_school"
    t.string   "department"
    t.string   "stream"
    t.string   "graduated_date"
    t.boolean  "new_graduates"
    t.string   "occupation"
    t.string   "company"
    t.string   "company_address"
    t.string   "work_period"
    t.text     "memo"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "prospects", :force => true do |t|
    t.date     "jusndt"
    t.string   "kbsnko"
    t.string   "kbsryo"
    t.string   "event"
    t.date     "raijdt"
    t.boolean  "infoyn"
    t.string   "syugan"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "rails_admin_histories", :force => true do |t|
    t.text     "message"
    t.string   "username"
    t.integer  "item"
    t.string   "table"
    t.integer  "month",      :limit => 2
    t.integer  "year",       :limit => 5
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
  end

  add_index "rails_admin_histories", ["item", "table", "month", "year"], :name => "index_rails_admin_histories"

  create_table "student_lists", :force => true do |t|
    t.string   "classification"
    t.string   "name"
    t.string   "student_id"
    t.integer  "grade"
    t.string   "program"
    t.string   "student_account"
    t.string   "campus_email"
    t.string   "nationality"
    t.string   "visa"
    t.date     "entrance_date"
    t.string   "study_period"
    t.date     "graduation_date"
    t.string   "PBL_1st"
    t.string   "PBL_2nd"
    t.string   "PBL_teacher"
    t.text     "memo"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "students", :force => true do |t|
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
    t.integer  "gakusyubango"
    t.integer  "gakunen"
    t.string   "kuarsu"
    t.string   "kanzi"
    t.string   "kana"
    t.string   "myozi"
    t.integer  "seireki"
    t.integer  "nenreisansyutuyou"
    t.integer  "nenrei"
    t.integer  "seigetu"
    t.string   "yuzaid"
    t.string   "emailadoresu"
    t.integer  "yuubinbangou"
    t.string   "zyusyo"
    t.integer  "denwa_zitaku"
    t.integer  "denwa_keitai"
    t.string   "kozinemairuadoresu"
    t.string   "gakkoumei"
    t.string   "gakubumei"
    t.string   "bunri"
    t.integer  "sotugyounendo"
    t.string   "sinsotu"
    t.string   "kinmusaki"
    t.string   "kinmusakizyuusyo"
    t.string   "syuugyoukikan"
    t.string   "tyoukirisyuu"
    t.string   "risyuukikan"
    t.string   "gakuseki"
    t.string   "kyuugakukikan"
    t.integer  "nyuugakunengappi"
    t.integer  "syuuryouyoteibi"
    t.string   "kokuseki"
    t.string   "zairyuusikaku"
    t.string   "hurikaeiraisyo"
    t.string   "zenkigenmenn"
    t.string   "koukigennmen"
    t.string   "kubun"
    t.string   "bikou"
    t.string   "kanzisimei"
    t.string   "kanasimei"
    t.string   "hosyounin_yuubinbangou"
    t.integer  "zyuusyo"
    t.string   "denwabangou"
    t.integer  "zokugarakubun"
    t.string   "zenki"
    t.string   "kouki"
    t.string   "tantou"
    t.string   "nyuusi"
    t.integer  "zyukennnendo"
    t.integer  "zyukenbangou"
    t.integer  "itkisotisiki"
    t.integer  "syouronbun"
    t.integer  "purezentesyon"
    t.integer  "mensetu"
    t.integer  "goukeiten"
    t.string   "umu"
    t.string   "hanteiriyuu"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "versions", :force => true do |t|
    t.string   "item_type",  :null => false
    t.integer  "item_id",    :null => false
    t.string   "event",      :null => false
    t.string   "whodunnit"
    t.text     "object"
    t.datetime "created_at"
  end

  add_index "versions", ["item_type", "item_id"], :name => "index_versions_on_item_type_and_item_id"

end
