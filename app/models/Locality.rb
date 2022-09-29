class Locality < ApplicationRecord
  belongs_to :community, class_name: 'Community', foreign_key: :p_code
end
