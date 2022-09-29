namespace :db do
  desc 'Import cities'
  task import_cities_data: :environment do
    Region.delete_all
    Community.delete_all
    Locality.delete_all
    importer = CityImporter.new(file: Rails.root + "lib/CitiesAndVillages.json")
    importer.import
  end
end