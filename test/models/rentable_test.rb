# frozen_string_literal: true

require 'test_helper'

class RentableTest < ActiveSupport::TestCase
  let(:rentable) { rentables(:rentable) }

  describe 'validations' do
    it 'requires a name' do
      rentable.name = nil

      assert_not rentable.valid?
      assert rentable.errors.key?(:name)
    end

    it 'requires a address' do
      rentable.address = nil

      assert_not rentable.valid?
      assert rentable.errors.key?(:address)
    end
  end
end
