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

ActiveRecord::Schema.define(version: 2019_03_19_155008) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "departments", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "genders", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mistake_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "operations", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "papers", force: :cascade do |t|
    t.date "day"
    t.date "dated"
    t.text "description"
    t.text "remark"
    t.bigint "mistake_type_id"
    t.bigint "operation_id"
    t.bigint "source_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["mistake_type_id"], name: "index_papers_on_mistake_type_id"
    t.index ["operation_id"], name: "index_papers_on_operation_id"
    t.index ["source_id"], name: "index_papers_on_source_id"
  end

  create_table "papers_staffs", id: false, force: :cascade do |t|
    t.bigint "staff_id", null: false
    t.bigint "paper_id", null: false
    t.index ["paper_id", "staff_id"], name: "index_papers_staffs_on_paper_id_and_staff_id"
    t.index ["staff_id", "paper_id"], name: "index_papers_staffs_on_staff_id_and_paper_id"
  end

  create_table "sources", force: :cascade do |t|
    t.integer "code"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "staffs", force: :cascade do |t|
    t.string "name"
    t.bigint "gender_id"
    t.bigint "department_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["department_id"], name: "index_staffs_on_department_id"
    t.index ["gender_id"], name: "index_staffs_on_gender_id"
  end

  add_foreign_key "papers", "mistake_types"
  add_foreign_key "papers", "operations"
  add_foreign_key "papers", "sources"
  add_foreign_key "staffs", "departments"
  add_foreign_key "staffs", "genders"
end
