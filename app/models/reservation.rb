# frozen_string_literal: true

class Reservation < ApplicationRecord
  belongs_to :park
  belongs_to :booking

  validates :start_date, :end_date, presence: true
end
