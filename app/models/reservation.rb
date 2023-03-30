# frozen_string_literal: true

# == Schema Information
#
# Table name: reservations
#
#  id         :bigint           not null, primary key
#  end_date   :date
#  start_date :date
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  booking_id :bigint           not null, indexed
#  park_id    :bigint           not null, indexed
#
# Indexes
#
#  index_reservations_on_booking_id  (booking_id)
#  index_reservations_on_park_id     (park_id)
#
# Foreign Keys
#
#  fk_rails_...  (booking_id => bookings.id)
#  fk_rails_...  (park_id => parks.id)
#
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
