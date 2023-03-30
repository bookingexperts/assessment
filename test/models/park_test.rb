# frozen_string_literal: true

require 'test_helper'

class ParkTest < ActiveSupport::TestCase
  let(:park) { parks(:park) }

  describe 'validations' do
    it 'requires a name' do
      park.name = nil

      assert_not park.valid?
      assert park.errors.key?(:name)
    end
  end
end
