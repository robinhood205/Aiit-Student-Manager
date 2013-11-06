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

ActiveRecord::Schema.define(:version => 20131106055526) do

  create_table "aiit_members", :force => true do |t|
    t.string   "name"
    t.string   "kana_name"
    t.date     "birthday"
    t.string   "gender"
    t.text     "memo"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "exam_lists", :force => true do |t|
    t.integer  "aiit_member_id"
    t.string   "exam_no"
    t.boolean  "review_flg"
    t.string   "decision_reason"
    t.boolean  "citizen_of_tokyo"
    t.string   "examination"
    t.integer  "exam_year"
    t.integer  "basic_knowledge"
    t.integer  "paper"
    t.integer  "presentation"
    t.integer  "interview"
    t.integer  "test_score"
    t.boolean  "result"
    t.text     "memo"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "guarantors", :force => true do |t|
    t.string   "name"
    t.string   "guarantor_kana"
    t.string   "guarantor_zip"
    t.string   "guarantor_address"
    t.string   "guarantor_tel"
    t.string   "relationship"
    t.text     "memo"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "privacies", :force => true do |t|
    t.integer  "aiit_member_id"
    t.string   "eng_name"
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
    t.integer  "aiit_member_id"
    t.date     "received_date"
    t.string   "wished_program"
    t.string   "wished_material"
    t.string   "event"
    t.date     "visited_date"
    t.boolean  "contact_unnecessary"
    t.string   "applikation"
    t.text     "memo"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
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

  create_table "status_records", :force => true do |t|
    t.integer  "student_list_id"
    t.string   "status"
    t.string   "absence_reason"
    t.string   "absence_time"
    t.date     "beginning"
    t.date     "end"
    t.string   "return_reason"
    t.text     "memo"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "student_lists", :force => true do |t|
    t.integer  "aiit_member_id"
    t.string   "name"
    t.string   "classification"
    t.integer  "grade"
    t.string   "program"
    t.string   "student_account"
    t.string   "campus_email"
    t.string   "nationality"
    t.string   "visa"
    t.date     "beginning"
    t.date     "end"
    t.string   "longterm"
    t.string   "PBL_1st"
    t.string   "PBL_2nd"
    t.string   "PBL_teacher"
    t.integer  "guarantor_id"
    t.text     "memo"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "tuitions", :force => true do |t|
    t.integer  "student_list_id"
    t.boolean  "transfer_request"
    t.string   "exemption_type"
    t.string   "scholarship_division"
    t.string   "loan_amount"
    t.text     "memo"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
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
