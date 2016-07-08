class Vehicle < ApplicationRecord
  belongs_to :auto_gate

  validates :plate_number, presence: true, length: {minimum: 5, maximum: 10}
end
