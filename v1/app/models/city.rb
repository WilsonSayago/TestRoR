class City < ApplicationRecord
  validates :name, presence: true
  validates :cod, presence: true
  has_many :temperatures, dependent: :delete_all
end
