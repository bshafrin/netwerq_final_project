class AddPersonCountToCompanies < ActiveRecord::Migration[5.1]
  def change
    add_column :companies, :people_count, :integer
  end
end
