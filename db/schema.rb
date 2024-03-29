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

ActiveRecord::Schema.define(:version => 20120225150922) do

  create_table "deals", :force => true do |t|
    t.integer  "user_id",                       :null => false
    t.integer  "work_id",                       :null => false
    t.boolean  "done",       :default => false, :null => false
    t.string   "comment",    :default => "",    :null => false
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

  create_table "members", :force => true do |t|
    t.integer  "user_id",    :default => 0,     :null => false
    t.integer  "team_id",    :default => 0,     :null => false
    t.string   "nickname",   :default => "",    :null => false
    t.boolean  "verifying",  :default => true,  :null => false
    t.boolean  "manager",    :default => false, :null => false
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

  create_table "teams", :force => true do |t|
    t.integer  "user_id",     :default => 0,     :null => false
    t.string   "name",        :default => "",    :null => false
    t.string   "description", :default => "",    :null => false
    t.boolean  "private",     :default => false, :null => false
    t.boolean  "recruiting",  :default => true,  :null => false
    t.boolean  "dismissed",   :default => false, :null => false
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
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
    t.string   "name"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "works", :force => true do |t|
    t.integer  "team_id",    :null => false
    t.integer  "user_id",    :null => false
    t.string   "title",      :null => false
    t.string   "detail",     :null => false
    t.datetime "deadline",   :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
