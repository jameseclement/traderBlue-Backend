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

ActiveRecord::Schema.define(version: 2019_04_14_181442) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "games", force: :cascade do |t|
    t.string "name"
    t.datetime "start_date"
    t.datetime "end_date"
    t.integer "starting_cash"
    t.integer "number_of_players"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "portfolios", force: :cascade do |t|
    t.string "name"
    t.float "cash"
    t.bigint "user_id"
    t.bigint "game_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_id"], name: "index_portfolios_on_game_id"
    t.index ["user_id"], name: "index_portfolios_on_user_id"
  end

  create_table "positions", force: :cascade do |t|
    t.integer "quantity"
    t.bigint "portfolio_id"
    t.bigint "stock_id"
    t.string "ticker"
    t.datetime "open_date"
    t.datetime "close_date"
    t.float "cost_basis"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["portfolio_id"], name: "index_positions_on_portfolio_id"
    t.index ["stock_id"], name: "index_positions_on_stock_id"
  end

  create_table "stocks", force: :cascade do |t|
    t.string "name"
    t.string "ticker"
    t.string "cap_level"
    t.string "industry"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "email"
    t.string "first_name"
    t.string "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "watchlist_items", force: :cascade do |t|
    t.string "name"
    t.string "ticker"
    t.string "cap_level"
    t.string "industry"
    t.bigint "portfolio_id"
    t.bigint "stock_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["portfolio_id"], name: "index_watchlist_items_on_portfolio_id"
    t.index ["stock_id"], name: "index_watchlist_items_on_stock_id"
    t.index ["user_id"], name: "index_watchlist_items_on_user_id"
  end

  add_foreign_key "portfolios", "games"
  add_foreign_key "portfolios", "users"
  add_foreign_key "positions", "portfolios"
  add_foreign_key "positions", "stocks"
  add_foreign_key "watchlist_items", "portfolios"
  add_foreign_key "watchlist_items", "stocks"
  add_foreign_key "watchlist_items", "users"
end
