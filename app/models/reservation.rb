# frozen_string_literal: true

class Reservation < ApplicationRecord
  belongs_to :park
  belongs_to :booking

  validates :start_date, :end_date, presence: true

  validate :end_date_after_start_date

  private

  def end_date_after_start_date
    errors.add(:end_date, :invalid) if end_date <= start_date
  end
end
