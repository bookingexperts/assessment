# frozen_string_literal: true

# == Schema Information
#
# Table name: parks
#
#  id              :bigint           not null, primary key
#  name            :string           not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  organization_id :bigint           not null, indexed
#
# Indexes
#
#  index_parks_on_organization_id  (organization_id)
#
# Foreign Keys
#
#  fk_rails_...  (organization_id => organizations.id)
#
class Park < ApplicationRecord
  belongs_to :organization

  has_many :bookings
  has_many :reservations

  validates :name, presence: true
end
