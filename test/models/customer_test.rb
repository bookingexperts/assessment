# frozen_string_literal: true

require 'test_helper'

class CustomerTest < ActiveSupport::TestCase
  let(:customer) { customers(:customer) }

  describe 'validations' do
    it 'requires a name' do
      customer.name = nil

      refute customer.valid?
      assert customer.errors.key?(:name)
    end

    it 'requires an email address' do
      customer.email = nil

      refute customer.valid?
      assert customer.errors.key?(:email)
    end
  end
end
