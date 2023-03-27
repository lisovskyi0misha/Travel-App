class AddDefaultRateForUsersAndAccommodations < ActiveRecord::Migration[7.0]
  def change
    change_column_default :users, :rate, 0.00
    change_column_default :accommodations, :rate, 0.00
  end
end
