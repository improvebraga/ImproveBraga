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

ActiveRecord::Schema.define(version: 20140215165447) do

  create_table "editions", force: true do |t|
    t.string   "date"
    t.string   "local"
    t.string   "photos"
    t.string   "newsletter"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "media", force: true do |t|
    t.string   "title"
    t.string   "description"
    t.string   "site"
    t.datetime "date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "projects", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.text     "done"
    t.text     "todo"
    t.string   "authors"
    t.string   "website"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "edition_id"
    t.string   "thumbnail_file_name"
    t.string   "thumbnail_content_type"
    t.integer  "thumbnail_file_size"
    t.datetime "thumbnail_updated_at"
  end

  create_table "projects_editions", force: true do |t|
    t.integer  "project_id"
    t.integer  "edition_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
