# frozen_string_literal: true

require 'test_helper'

class CustomerTest < ActiveSupport::TestCase
  let(:customer) { customers(:customer) }

  describe 'validations' do
    it 'requires a name' do
      customer.name = nil

      assert_not customer.valid?
      assert customer.errors.key?(:name)
    end

    it 'requires an email address' do
      customer.email = nil

      assert_not customer.valid?
      assert customer.errors.key?(:email)
    end
  end
end
