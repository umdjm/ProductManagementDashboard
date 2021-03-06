# encoding: UTF-8
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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20140117180410) do

  create_table "competition_prices", :force => true do |t|
    t.integer  "row_id"
    t.date     "from_date"
    t.date     "to_date"
    t.string   "part_number"
    t.decimal  "dealer_price"
    t.decimal  "list_price"
    t.string   "part_category"
    t.text     "competition_brand"
    t.string   "competition_part_number"
    t.string   "competition_name"
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
    t.string   "part_name"
    t.integer  "part_id"
    t.integer  "ibis_datum_id"
  end

  add_index "competition_prices", ["ibis_datum_id"], :name => "index_competition_prices_on_ibi_id"
  add_index "competition_prices", ["part_id"], :name => "index_competition_prices_on_part_id"

  create_table "ibis_data", :force => true do |t|
    t.integer  "row_id"
    t.date     "from_date"
    t.date     "to_date"
    t.string   "part_number"
    t.decimal  "dealer_price"
    t.decimal  "list_price"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "part_id"
    t.string   "part_category"
  end

  add_index "ibis_data", ["part_id"], :name => "index_ibis_on_part_id"

  create_table "parts", :force => true do |t|
    t.string   "part_number"
    t.string   "part_category"
    t.string   "part_name"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "sales", :force => true do |t|
    t.datetime "from_date"
    t.string   "part_number"
    t.decimal  "retail_revenue"
    t.integer  "retail_quantity"
    t.decimal  "dealer_price"
    t.integer  "gross_quantity"
    t.decimal  "gross_revenue"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "part_category"
  end

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

end
