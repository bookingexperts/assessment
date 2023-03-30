# frozen_string_literal: true

class Customer < ApplicationRecord
  belongs_to :organization

  validates :name, :email, presence: true
end
