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

ActiveRecord::Schema.define(version: 20171101165841) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "dishes", force: :cascade do |t|
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "name"
    t.string   "price"
    t.string   "options"
    t.integer  "restaurant_id"
    t.index ["restaurant_id"], name: "index_dishes_on_restaurant_id", using: :btree
  end

  create_table "orders", force: :cascade do |t|
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "user_id"
    t.integer  "restaurant_id"
    t.string   "status"
    t.string   "address"
    t.text     "additional_info"
    t.integer  "product_id"
    t.index ["product_id"], name: "index_orders_on_product_id", using: :btree
    t.index ["restaurant_id"], name: "index_orders_on_restaurant_id", using: :btree
    t.index ["user_id"], name: "index_orders_on_user_id", using: :btree
  end

  create_table "products", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "dish_id"
    t.integer  "orders_id"
    t.integer  "order_id"
    t.index ["dish_id"], name: "index_products_on_dish_id", using: :btree
    t.index ["order_id"], name: "index_products_on_order_id", using: :btree
    t.index ["orders_id"], name: "index_products_on_orders_id", using: :btree
  end

  create_table "ratings", force: :cascade do |t|
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.boolean  "value"
    t.integer  "restaurant_id"
    t.index ["restaurant_id"], name: "index_ratings_on_restaurant_id", using: :btree
  end

  create_table "restaurants", force: :cascade do |t|
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "name"
    t.string   "address"
    t.string   "phone_number"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "dishes", "restaurants"
  add_foreign_key "orders", "products"
  add_foreign_key "orders", "restaurants"
  add_foreign_key "orders", "users"
  add_foreign_key "products", "dishes"
  add_foreign_key "products", "orders"
  add_foreign_key "products", "orders", column: "orders_id"
  add_foreign_key "ratings", "restaurants"
end
