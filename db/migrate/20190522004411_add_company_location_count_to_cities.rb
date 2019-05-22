class AddCompanyLocationCountToCities < ActiveRecord::Migration[5.1]
  def change
    add_column :cities, :company_locations_count, :integer
  end
end
