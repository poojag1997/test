class City < ApplicationRecord
  has_many :shows, dependent: :destroy
end
