class CreateAdministrativeDevisions < ActiveRecord::Migration[7.0]
  def change
    create_table :administrative_divisions do |t|
      t.string :name, null: false
      t.references :country, foreign_key: true, null: false
      t.integer :type
      t.timestamps
    end
  end
end
