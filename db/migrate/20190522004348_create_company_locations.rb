class CreateCompanyLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :company_locations do |t|
      t.integer :company_id
      t.integer :city_id

      t.timestamps
    end
  end
end
