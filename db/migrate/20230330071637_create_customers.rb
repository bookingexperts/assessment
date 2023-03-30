# frozen_string_literal: true

class CreateCustomers < ActiveRecord::Migration[7.0]
  def change
    create_table :customers do |t|
      t.references :organization, null: false, foreign_key: true

      t.timestamps
    end
  end
end
