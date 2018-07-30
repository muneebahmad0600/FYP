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

ActiveRecord::Schema.define(version: 20180730085231) do

  create_table "admins", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "user_name"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "consumers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "user_name"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ordered_products", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "quantity"
    t.integer "product_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "products_id"
    t.bigint "orders_id"
    t.index ["orders_id"], name: "index_ordered_products_on_orders_id"
    t.index ["products_id"], name: "index_ordered_products_on_products_id"
  end

  create_table "orders", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "status"
    t.integer "bill"
    t.bigint "providers_id"
    t.bigint "users_id"
    t.index ["providers_id"], name: "index_orders_on_providers_id"
    t.index ["users_id"], name: "index_orders_on_users_id"
  end

  create_table "products", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "product_name"
    t.integer "product_barcode"
    t.decimal "product_price", precision: 10
    t.string "product_size"
    t.string "product_type"
    t.string "product_color"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "providers_id"
    t.index ["providers_id"], name: "index_products_on_providers_id"
  end

  create_table "provider_products", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "providers_id"
    t.bigint "products_id"
    t.index ["products_id"], name: "index_provider_products_on_products_id"
    t.index ["providers_id"], name: "index_provider_products_on_providers_id"
  end

  create_table "providers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "provider_name"
    t.string "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "provider_ranking"
    t.string "delivery_start_time"
    t.string "delivery_end_time"
    t.float "longitude", limit: 53
    t.float "latitude", limit: 53
    t.string "delivery_charges"
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "email"
    t.string "crypted_password"
    t.string "salt"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "user_type"
    t.string "location"
    t.string "user_name"
    t.bigint "providers_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["providers_id"], name: "index_users_on_providers_id"
    t.index ["user_name"], name: "index_users_on_user_name", unique: true
  end

end
