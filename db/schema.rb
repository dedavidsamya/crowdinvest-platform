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

ActiveRecord::Schema.define(version: 2021_09_21_202302) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "investments", force: :cascade do |t|
    t.decimal "amount_of_money", precision: 15, scale: 2
    t.bigint "issuance_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["issuance_id"], name: "index_investments_on_issuance_id"
  end

  create_table "issuances", force: :cascade do |t|
    t.string "name"
    t.datetime "date"
    t.decimal "volume", precision: 15, scale: 2
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "investments", "issuances"
end
