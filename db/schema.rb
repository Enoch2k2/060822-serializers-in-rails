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

ActiveRecord::Schema.define(version: 2022_11_30_141718) do

  create_table "movies", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.date "release_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "platform_movies", force: :cascade do |t|
    t.integer "movie_id", null: false
    t.integer "platform_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["movie_id"], name: "index_platform_movies_on_movie_id"
    t.index ["platform_id"], name: "index_platform_movies_on_platform_id"
  end

  create_table "platforms", force: :cascade do |t|
    t.string "name"
    t.integer "monthly_cost"
    t.string "website"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "platform_movies", "movies"
  add_foreign_key "platform_movies", "platforms"
end
