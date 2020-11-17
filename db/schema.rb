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

ActiveRecord::Schema.define(version: 2020_11_16_220102) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "glazes", force: :cascade do |t|
    t.string "name"
    t.string "code"
    t.integer "difficulty"
    t.text "notes"
    t.string "surface"
    t.string "color"
    t.boolean "is_runny"
    t.boolean "is_shino"
    t.integer "success_rate"
    t.boolean "is_rangy"
    t.boolean "has_kiln_note"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tiles", force: :cascade do |t|
    t.bigint "top_id"
    t.bigint "bottom_id"
    t.string "location"
    t.string "pic_url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["bottom_id"], name: "index_tiles_on_bottom_id"
    t.index ["top_id"], name: "index_tiles_on_top_id"
  end

end
