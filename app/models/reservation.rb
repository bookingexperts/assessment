class Reservation < ApplicationRecord
  belongs_to :park
  belongs_to :booking
end
