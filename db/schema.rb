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

ActiveRecord::Schema.define(version: 20171118065209) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "company"
    t.string "street_1"
    t.string "street_2"
    t.string "city"
    t.string "state"
    t.string "zipcode"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "billing_addresses", force: :cascade do |t|
    t.bigint "address_id"
    t.bigint "customer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["address_id"], name: "index_billing_addresses_on_address_id"
    t.index ["customer_id"], name: "index_billing_addresses_on_customer_id"
  end

  create_table "carts", force: :cascade do |t|
    t.bigint "customer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_carts_on_customer_id"
  end

  create_table "customers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "invoices", force: :cascade do |t|
    t.bigint "customer_id"
    t.string "total_cents"
    t.bigint "payment_id"
    t.bigint "billing_address_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["billing_address_id"], name: "index_invoices_on_billing_address_id"
    t.index ["customer_id"], name: "index_invoices_on_customer_id"
    t.index ["payment_id"], name: "index_invoices_on_payment_id"
  end

  create_table "line_items", force: :cascade do |t|
    t.bigint "cart_id"
    t.bigint "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cart_id"], name: "index_line_items_on_cart_id"
    t.index ["product_id"], name: "index_line_items_on_product_id"
  end

  create_table "payments", force: :cascade do |t|
    t.string "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "price_cents"
    t.string "sku"
    t.boolean "taxable"
    t.boolean "perishable"
  end

  create_table "shipments", force: :cascade do |t|
    t.bigint "shipping_address_id"
    t.bigint "invoice_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["invoice_id"], name: "index_shipments_on_invoice_id"
    t.index ["shipping_address_id"], name: "index_shipments_on_shipping_address_id"
  end

  create_table "shipping_addresses", force: :cascade do |t|
    t.bigint "address_id"
    t.bigint "customer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["address_id"], name: "index_shipping_addresses_on_address_id"
    t.index ["customer_id"], name: "index_shipping_addresses_on_customer_id"
  end

  add_foreign_key "billing_addresses", "addresses"
  add_foreign_key "billing_addresses", "customers"
  add_foreign_key "carts", "customers"
  add_foreign_key "invoices", "billing_addresses"
  add_foreign_key "invoices", "customers"
  add_foreign_key "invoices", "payments"
  add_foreign_key "line_items", "carts"
  add_foreign_key "line_items", "products"
  add_foreign_key "shipments", "invoices"
  add_foreign_key "shipments", "shipping_addresses"
  add_foreign_key "shipping_addresses", "addresses"
  add_foreign_key "shipping_addresses", "customers"
end
