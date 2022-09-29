class CreateRegions < ActiveRecord::Migration[5.1]
  def change
    create_table :regions, id: false do |t|
      t.bigint "code"
      t.string "name"
      t.index ["code"], name: "index_fuel_surcharge_percentages_on_code"
      t.index ["name"], name: "index_fuel_surcharge_percentages_on_name"
    end
  end
end
