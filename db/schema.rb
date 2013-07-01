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

ActiveRecord::Schema.define(:version => 20130622151909) do

  create_table "categories", :force => true do |t|
    t.boolean  "enabled"
    t.text     "title"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "levels", :force => true do |t|
    t.boolean  "enabled"
    t.integer  "difficulty"
    t.integer  "category_id"
    t.text     "img_url"
    t.text     "first_name"
    t.text     "last_name"
    t.text     "stage_name"
    t.text     "band_name"
    t.integer  "title_id"
    t.integer  "question_id"
    t.text     "fun_fact"
    t.boolean  "fun_fact_enabled"
    t.text     "wiki"
    t.boolean  "wiki_enabled"
    t.integer  "number_in_category"
    t.integer  "number_in_all"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "questions", :force => true do |t|
    t.boolean  "enabled"
    t.text     "title"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "titles", :force => true do |t|
    t.boolean  "enabled"
    t.text     "title"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.text     "login"
    t.text     "password"
    t.boolean  "admin"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
