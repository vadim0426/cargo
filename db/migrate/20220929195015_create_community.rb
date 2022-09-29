class CreateCommunity < ActiveRecord::Migration[5.1]
  def change
    create_table :communities, id: false do |t|
      t.bigint "code"
      t.bigint "p_code"
      t.string "name"
      t.index ["code"], name: "index_fuel_surcharge_percentages_on_rcode"
      t.index ["code"], name: "index_fuel_surcharge_percentages_on_p_code"
      t.index ["name"], name: "index_fuel_surcharge_percentages_on_rname"
    end
  end
end
