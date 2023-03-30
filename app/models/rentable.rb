# frozen_string_literal: true

# == Schema Information
#
# Table name: rentables
#
#  id         :bigint           not null, primary key
#  address    :string           not null
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  park_id    :bigint           not null, indexed
#
# Indexes
#
#  index_rentables_on_park_id  (park_id)
#
# Foreign Keys
#
#  fk_rails_...  (park_id => parks.id)
#
class Rentable < ApplicationRecord
  belongs_to :park

  has_many :reservations

  validates :name, :address, presence: true
end
