class Temperature < ApplicationRecord
  validates :temp, presence: true
  belongs_to :city
end
