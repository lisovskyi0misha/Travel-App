class CreateAccommodations < ActiveRecord::Migration[7.0]
  def change
    create_table :accommodations do |t|
      t.string :name, null: false
      t.string :address
      t.string :city
      t.integer :type
      t.index :city
      t.index :address
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end

  end
end
