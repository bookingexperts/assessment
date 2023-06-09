class CreateRentables < ActiveRecord::Migration[7.0]
  def change
    create_table :rentables do |t|
      t.references :park, null: false, foreign_key: true

      t.string :name, null: false
      t.string :address, null: false

      t.timestamps
    end
  end
end
