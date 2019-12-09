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

ActiveRecord::Schema.define(version: 2019_12_08_212915) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "ads", force: :cascade do |t|
    t.date "date"
    t.integer "impressions", default: 0, null: false
    t.integer "clicks", default: 0, null: false
    t.integer "sales", default: 0, null: false
    t.float "ad_spend", default: 0.0, null: false
    t.string "keyword_id", null: false
    t.string "asin", null: false
    t.index ["asin"], name: "index_ads_on_asin"
    t.index ["keyword_id"], name: "index_ads_on_keyword_id"
  end

  create_table "keywords", force: :cascade do |t|
    t.string "keyword_id", null: false
    t.string "ad_group", null: false
    t.string "keyword", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "asin", null: false
    t.string "name", null: false
  end

end
