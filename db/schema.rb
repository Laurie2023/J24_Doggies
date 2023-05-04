# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_05_04_125103) do
  create_table "cities", force: :cascade do |t|
    t.string "city_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dogs", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "city_id"
    t.index ["city_id"], name: "index_dogs_on_city_id"
  end

  create_table "dogsiters", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "city_id"
    t.index ["city_id"], name: "index_dogsiters_on_city_id"
  end

  create_table "join_table_dog_strolls", force: :cascade do |t|
    t.integer "dog_id"
    t.integer "stroll_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["dog_id"], name: "index_join_table_dog_strolls_on_dog_id"
    t.index ["stroll_id"], name: "index_join_table_dog_strolls_on_stroll_id"
  end

  create_table "strolls", force: :cascade do |t|
    t.datetime "date"
    t.integer "dogsiter_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["dogsiter_id"], name: "index_strolls_on_dogsiter_id"
  end

  add_foreign_key "dogs", "cities"
  add_foreign_key "dogsiters", "cities"
end
