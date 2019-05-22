class CreateContactMethods < ActiveRecord::Migration[5.1]
  def change
    create_table :contact_methods do |t|
      t.string :method_name

      t.timestamps
    end
  end
end
