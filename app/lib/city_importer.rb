#encoding: UTF-8
class CityImporter
  require 'json'

  attr_accessor :file

  def initialize(options = {})
    @file = options[:file]
  end

  def import
    json = File.read(file)
    hash_data = JSON.parse(json)
    regions = hash_data.uniq { |e| e['level_1'] }
    regions.each do |region|
      Region.create(
        code: region['level_1'],
        name: region['region']
      )
    end

    communities = hash_data.uniq { |e| e['level_2'] }
    communities.each do |community|
      Community.create(
        code: community['level_2'],
        p_code: community['level_1'],
        name: community['community']
      )
    end

    localities = hash_data.uniq { |e| e['level_3'] }
    localities.each do |locality|
      Locality.create(
        code: locality['level_3'],
        p_code: locality['level_2'],
        l_type: locality['object_category'],
        name: locality['object_name']
      )
    end
  end
end