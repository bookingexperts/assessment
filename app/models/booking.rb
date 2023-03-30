class Booking < ApplicationRecord
  belongs_to :park
  belongs_to :customer
end
