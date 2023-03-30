# frozen_string_literal: true

require 'test_helper'

class BookingTest < ActiveSupport::TestCase
  let(:booking) { bookings(:booking) }

  describe 'validations' do
    it 'requires a name' do
      booking.name = nil

      assert_not booking.valid?
      assert booking.errors.key?(:name)
    end

    it 'requires an email address' do
      booking.email = nil

      assert_not booking.valid?
      assert booking.errors.key?(:email)
    end
  end
end
