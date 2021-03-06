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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20130629125347) do

  create_table "assignments", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "github_login"
    t.string   "github_repo"
    t.datetime "assigned_date"
    t.datetime "due_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contributions", force: true do |t|
    t.integer  "assignment_id"
    t.integer  "student_id"
    t.datetime "contribution_created_at"
    t.datetime "contribution_updated_at"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "url"
  end

  create_table "students", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "github_login"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "course"
  end

end
