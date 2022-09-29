class Community < ApplicationRecord
  belongs_to :region, class_name: 'Region', foreign_key: :p_code
end
