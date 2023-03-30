# frozen_string_literal: true

# == Schema Information
#
# Table name: customers
#
#  id              :bigint           not null, primary key
#  email           :string
#  name            :string
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
class Customer < ApplicationRecord
  belongs_to :organization

  validates :name, :email, presence: true
end
