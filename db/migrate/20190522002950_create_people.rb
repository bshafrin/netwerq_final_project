class CreatePeople < ActiveRecord::Migration[5.1]
  def change
    create_table :people do |t|
      t.string :name
      t.string :title
      t.integer :company_id
      t.string :relationship
      t.integer :work_sector_id
      t.integer :city_id
      t.string :email
      t.string :phone_number
      t.integer :contacts

      t.timestamps
    end
  end
end
