# frozen_string_literal: true

# == Schema Information
#
# Table name: customers
#
#  id              :bigint           not null, primary key
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  organization_id :bigint           not null, indexed
#
# Indexes
#
#  index_customers_on_organization_id  (organization_id)
#
# Foreign Keys
#
#  fk_rails_...  (organization_id => organizations.id)
#
FactoryBot.define do
  factory :customer do
    organization_id { ActiveRecord::FixtureSet.identify(:organization) }
  end
end
