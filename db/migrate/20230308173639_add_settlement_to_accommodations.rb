class AddSettlementToAccommodations < ActiveRecord::Migration[7.0]
  def change
    add_reference :accommodations, :settlement, foreign_key: true, null: false
    remove_column :accommodations, :city, :integer
    add_column :accommodations, :rate, :float
  end
end
