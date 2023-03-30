# frozen_string_literal: true

class CreateParks < ActiveRecord::Migration[7.0]
  def change
    create_table :parks do |t|
      t.references :organization, null: false, foreign_key: true

      t.string :name, null: false

      t.timestamps
    end
  end
end
