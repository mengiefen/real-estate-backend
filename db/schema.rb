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

ActiveRecord::Schema[7.0].define(version: 2022_08_19_225012) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.string "address_line"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "country_id", null: false
    t.bigint "state_id", null: false
    t.bigint "city_id", null: false
    t.index ["city_id"], name: "index_addresses_on_city_id"
    t.index ["country_id"], name: "index_addresses_on_country_id"
    t.index ["state_id"], name: "index_addresses_on_state_id"
  end

  create_table "agent_users", force: :cascade do |t|
    t.string "business_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_detail_id", null: false
    t.index ["user_detail_id"], name: "index_agent_users_on_user_detail_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "category_types", force: :cascade do |t|
    t.bigint "type_id", null: false
    t.bigint "category_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_category_types_on_category_id"
    t.index ["type_id"], name: "index_category_types_on_type_id"
  end

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "state_id", null: false
    t.index ["state_id"], name: "index_cities_on_state_id"
  end

  create_table "countries", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "flats", force: :cascade do |t|
    t.integer "rooms"
    t.integer "washrooms"
    t.bigint "listing_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["listing_id"], name: "index_flats_on_listing_id"
  end

  create_table "houses", force: :cascade do |t|
    t.integer "stories"
    t.boolean "basement"
    t.integer "rooms"
    t.integer "washrooms"
    t.boolean "lawn"
    t.boolean "swimming_pool"
    t.integer "garage_capacity"
    t.boolean "fence"
    t.bigint "listing_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["listing_id"], name: "index_houses_on_listing_id"
  end

  create_table "images", force: :cascade do |t|
    t.string "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "listing_id", null: false
    t.index ["listing_id"], name: "index_images_on_listing_id"
  end

  create_table "individual_users", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_detail_id", null: false
    t.index ["user_detail_id"], name: "index_individual_users_on_user_detail_id"
  end

  create_table "listings", force: :cascade do |t|
    t.string "title"
    t.decimal "area"
    t.decimal "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "address_id", null: false
    t.bigint "user_detail_id", null: false
    t.bigint "type_id", null: false
    t.bigint "category_id", null: false
    t.index ["address_id"], name: "index_listings_on_address_id"
    t.index ["category_id"], name: "index_listings_on_category_id"
    t.index ["type_id"], name: "index_listings_on_type_id"
    t.index ["user_detail_id"], name: "index_listings_on_user_detail_id"
  end

  create_table "plazas", force: :cascade do |t|
    t.integer "shops"
    t.integer "stories"
    t.integer "parking_space"
    t.integer "basement"
    t.bigint "listing_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["listing_id"], name: "index_plazas_on_listing_id"
  end

  create_table "plots", force: :cascade do |t|
    t.bigint "listing_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["listing_id"], name: "index_plots_on_listing_id"
  end

  create_table "shops", force: :cascade do |t|
    t.boolean "in_mall"
    t.integer "floor"
    t.bigint "listing_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["listing_id"], name: "index_shops_on_listing_id"
  end

  create_table "states", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "country_id", null: false
    t.index ["country_id"], name: "index_states_on_country_id"
  end

  create_table "types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_details", force: :cascade do |t|
    t.string "phone_number"
    t.string "role"
    t.string "profile_pic"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "address_id", null: false
    t.index ["address_id"], name: "index_user_details_on_address_id"
  end

  add_foreign_key "addresses", "cities"
  add_foreign_key "addresses", "countries"
  add_foreign_key "addresses", "states"
  add_foreign_key "agent_users", "user_details"
  add_foreign_key "category_types", "categories"
  add_foreign_key "category_types", "types"
  add_foreign_key "cities", "states"
  add_foreign_key "flats", "listings"
  add_foreign_key "houses", "listings"
  add_foreign_key "images", "listings"
  add_foreign_key "individual_users", "user_details"
  add_foreign_key "listings", "addresses"
  add_foreign_key "listings", "categories"
  add_foreign_key "listings", "types"
  add_foreign_key "listings", "user_details"
  add_foreign_key "plazas", "listings"
  add_foreign_key "plots", "listings"
  add_foreign_key "shops", "listings"
  add_foreign_key "states", "countries"
  add_foreign_key "user_details", "addresses"
end
