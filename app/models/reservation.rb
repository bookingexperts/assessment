# frozen_string_literal: true

class Reservation < ApplicationRecord
  belongs_to :park
  belongs_to :booking
end
