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

ActiveRecord::Schema.define(version: 20220929195259) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "communities", id: false, force: :cascade do |t|
    t.bigint "code"
    t.bigint "p_code"
    t.string "name"
    t.index ["code"], name: "index_fuel_surcharge_percentages_on_p_code"
    t.index ["code"], name: "index_fuel_surcharge_percentages_on_rcode"
    t.index ["name"], name: "index_fuel_surcharge_percentages_on_rname"
  end

  create_table "localities", id: false, force: :cascade do |t|
    t.bigint "code"
    t.bigint "p_code"
    t.string "name"
    t.string "l_type"
    t.index ["code"], name: "index_fuel_surcharge_percentages_on_ccode"
    t.index ["code"], name: "index_fuel_surcharge_percentages_on_p_ccode"
    t.index ["l_type"], name: "index_fuel_surcharge_percentages_on_l_type"
    t.index ["name"], name: "index_fuel_surcharge_percentages_on_cname"
  end

  create_table "regions", id: false, force: :cascade do |t|
    t.bigint "code"
    t.string "name"
    t.index ["code"], name: "index_fuel_surcharge_percentages_on_code"
    t.index ["name"], name: "index_fuel_surcharge_percentages_on_name"
  end

end
