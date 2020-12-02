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

ActiveRecord::Schema.define(version: 2020_12_02_114533) do

  create_table "authors", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "coordinators", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "formations", force: :cascade do |t|
    t.date "start"
    t.date "finish"
    t.boolean "is_in_progress"
    t.string "degree"
    t.text "field"
    t.text "institution"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "language_skill_and_levels", force: :cascade do |t|
    t.integer "language_id"
    t.integer "language_skill_id"
    t.integer "language_skill_level_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["language_id"], name: "index_language_skill_and_levels_on_language_id"
    t.index ["language_skill_id"], name: "index_language_skill_and_levels_on_language_skill_id"
    t.index ["language_skill_level_id"], name: "index_language_skill_and_levels_on_language_skill_level_id"
  end

  create_table "language_skill_levels", force: :cascade do |t|
    t.integer "skill_level_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "language_skills", force: :cascade do |t|
    t.integer "skill_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "languages", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "is_native"
  end

  create_table "projects", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.integer "coordinator_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["coordinator_id"], name: "index_projects_on_coordinator_id"
  end

  create_table "publication_authors", force: :cascade do |t|
    t.integer "publication_id"
    t.integer "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_id"], name: "index_publication_authors_on_author_id"
    t.index ["publication_id"], name: "index_publication_authors_on_publication_id"
  end

  create_table "publications", force: :cascade do |t|
    t.string "title"
    t.string "publication_place"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
