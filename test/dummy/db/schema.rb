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

ActiveRecord::Schema.define(version: 20170208105233) do

  create_table "hotentic_engine_image_containers", force: :cascade do |t|
    t.integer  "hotentic_engine_site_id"
    t.integer  "hotentic_engine_page_id"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.index ["hotentic_engine_page_id"], name: "idx_image_containers_to_page_id"
    t.index ["hotentic_engine_site_id"], name: "idx_image_containers_to_site_id"
  end

  create_table "hotentic_engine_pages", force: :cascade do |t|
    t.integer  "hotentic_engine_site_id"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.integer  "order"
    t.string   "path"
    t.decimal  "priority"
    t.boolean  "active"
    t.string   "metadata"
    t.index ["hotentic_engine_site_id"], name: "idx_pages_to_site_id"
  end

  create_table "hotentic_engine_site_templates", force: :cascade do |t|
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "reference"
    t.string   "theme"
    t.text     "template_pages"
  end

  create_table "hotentic_engine_sites", force: :cascade do |t|
    t.integer  "hotentic_engine_site_template_id"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.string   "name"
    t.index ["hotentic_engine_site_template_id"], name: "idx_sites_to_site_template_id"
  end

  create_table "hotentic_engine_text_containers", force: :cascade do |t|
    t.integer  "hotentic_engine_site_id"
    t.integer  "hotentic_engine_page_id"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.index ["hotentic_engine_page_id"], name: "idx_text_containers_to_page_id"
    t.index ["hotentic_engine_site_id"], name: "idx_text_containers_to_site_id"
  end

end
