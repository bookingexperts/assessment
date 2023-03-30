# frozen_string_literal: true

class CreateReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :reservations do |t|
      t.references :park, null: false, foreign_key: true
      t.references :booking, null: false, foreign_key: true
      t.references :rentable, null: false, foreign_key: true

      t.date :start_date, null: false
      t.date :end_date, null: false

      t.timestamps
    end
  end
end
