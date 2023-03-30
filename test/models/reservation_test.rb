# frozen_string_literal: true

require 'test_helper'

class ReservationTest < ActiveSupport::TestCase
  let(:reservation) { reservations(:reservation) }

  describe 'validations' do
    it 'requires a start date' do
      reservation.start_date = nil

      assert_not reservation.valid?
      assert reservation.errors.key?(:start_date)
    end

    it 'requires an end date' do
      reservation.end_date = nil

      assert_not reservation.valid?
      assert reservation.errors.key?(:end_date)
    end

    it 'requires end date to be after start date' do
      reservation.end_date = reservation.start_date

      assert_not reservation.valid?
      assert reservation.errors.key?(:end_date)
    end
  end
end
