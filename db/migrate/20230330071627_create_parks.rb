class CreateParks < ActiveRecord::Migration[7.0]
  def change
    create_table :parks do |t|
      t.references :organization, null: false, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end