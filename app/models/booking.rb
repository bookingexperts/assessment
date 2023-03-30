# frozen_string_literal: true

# == Schema Information
#
# Table name: bookings
#
#  id          :bigint           not null, primary key
#  email       :string           not null
#  name        :string           not null
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
class Booking < ApplicationRecord
  belongs_to :park
  belongs_to :customer

  has_many :reservations

  validates :name, :email, presence: true
end
