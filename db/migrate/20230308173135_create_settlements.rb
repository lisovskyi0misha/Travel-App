class CreateSettlements < ActiveRecord::Migration[7.0]
  def change
    create_table :settlements do |t|
      t.string :name, null: false
      t.integer :type
      t.references :administrative_division, foreign_key: true, null: false
      t.timestamps
    end
  end
end
