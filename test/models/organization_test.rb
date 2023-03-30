# frozen_string_literal: true

require 'test_helper'

class OrganizationTest < ActiveSupport::TestCase
  let(:organization) { organizations(:organization) }

  describe 'validations' do
    it 'requires a name' do
      organization.name = nil

      assert_not organization.valid?
      assert organization.errors.key?(:name)
    end
  end
end
