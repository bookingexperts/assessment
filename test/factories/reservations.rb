# frozen_string_literal: true

# == Schema Information
#
# Table name: reservations
#
#  id          :bigint           not null, primary key
#  end_date    :date             not null
#  start_date  :date             not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  booking_id  :bigint           not null, indexed
#  park_id     :bigint           not null, indexed
#  rentable_id :bigint           not null, indexed
#
# Indexes
#
#  index_reservations_on_booking_id   (booking_id)
#  index_reservations_on_park_id      (park_id)
#  index_reservations_on_rentable_id  (rentable_id)
#
# Foreign Keys
#
#  fk_rails_...  (booking_id => bookings.id)
#  fk_rails_...  (park_id => parks.id)
#  fk_rails_...  (rentable_id => rentables.id)
#
FactoryBot.define do
  factory :reservation do
    park_id { ActiveRecord::FixtureSet.identify(:park) }
    booking_id { ActiveRecord::FixtureSet.identify(:booking) }
    rentable_id { ActiveRecord::FixtureSet.identify(:rentable) }

    start_date { '2023-03-23' }
    end_date { '2023-03-30' }
  end
end
