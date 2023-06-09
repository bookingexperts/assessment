# frozen_string_literal: true

class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.references :park, null: false, foreign_key: true
      t.references :customer, null: false, foreign_key: true

      t.string :name, null: false
      t.string :email, null: false

      t.timestamps
    end
  end
end
