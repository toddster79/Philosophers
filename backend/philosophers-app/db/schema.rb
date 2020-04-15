# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_04_13_174050) do

  create_table "philosopher_lists", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "philosopher_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["philosopher_id"], name: "index_philosopher_lists_on_philosopher_id"
    t.index ["user_id"], name: "index_philosopher_lists_on_user_id"
  end

  create_table "philosophers", force: :cascade do |t|
    t.string "name"
    t.text "summary"
    t.string "image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "user_name"
    t.string "password"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "philosopher_lists", "philosophers"
  add_foreign_key "philosopher_lists", "users"
end
