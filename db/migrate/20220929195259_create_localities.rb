class CreateLocalities < ActiveRecord::Migration[5.1]
  def change
    create_table :localities, id: false do |t|
      t.bigint "code"
      t.bigint "p_code"
      t.string "name"
      t.string "l_type"
      t.index ["code"], name: "index_fuel_surcharge_percentages_on_ccode"
      t.index ["l_type"], name: "index_fuel_surcharge_percentages_on_l_type"
      t.index ["code"], name: "index_fuel_surcharge_percentages_on_p_ccode"
      t.index ["name"], name: "index_fuel_surcharge_percentages_on_cname"
    end
  end
end
