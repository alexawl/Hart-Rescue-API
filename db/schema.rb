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

ActiveRecord::Schema.define(version: 2019_11_02_145916) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "adopters", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "applications", force: :cascade do |t|
    t.bigint "adopter_id", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "why_adopt"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["adopter_id"], name: "index_applications_on_adopter_id"
  end

  create_table "dogs", force: :cascade do |t|
    t.string "name"
    t.string "breed"
    t.string "img1"
    t.string "img2"
    t.string "img3"
    t.integer "weight"
    t.string "size"
    t.string "age"
    t.string "age_group"
    t.string "description"
    t.string "foster"
    t.boolean "altered"
    t.boolean "dog_friendly"
    t.boolean "kid_friendly"
    t.boolean "cat_friendly"
    t.boolean "has_special_needs"
    t.string "special_needs_desc"
    t.boolean "adopted", default: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "sex"
  end

  create_table "favorites", force: :cascade do |t|
    t.bigint "adopter_id", null: false
    t.bigint "dog_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["adopter_id"], name: "index_favorites_on_adopter_id"
    t.index ["dog_id"], name: "index_favorites_on_dog_id"
  end

  add_foreign_key "applications", "adopters"
  add_foreign_key "favorites", "adopters"
  add_foreign_key "favorites", "dogs"
end
