# frozen_string_literal: true

# == Schema Information
#
# Table name: bookings
#
#  id          :bigint           not null, primary key
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  customer_id :bigint           not null, indexed
#  park_id     :bigint           not null, indexed
#
# Indexes
#
#  index_bookings_on_customer_id  (customer_id)
#  index_bookings_on_park_id      (park_id)
#
# Foreign Keys
#
#  fk_rails_...  (customer_id => customers.id)
#  fk_rails_...  (park_id => parks.id)
#
FactoryBot.define do
  factory :booking do
    park_id { ActiveRecord::FixtureSet.identify(:park) }
    customer_id { ActiveRecord::FixtureSet.identify(:customer) }
  end
end
