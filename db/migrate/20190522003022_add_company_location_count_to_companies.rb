class AddCompanyLocationCountToCompanies < ActiveRecord::Migration[5.1]
  def change
    add_column :companies, :company_locations_count, :integer
  end
end
