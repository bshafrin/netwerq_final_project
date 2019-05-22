class AddPersonCountToCities < ActiveRecord::Migration[5.1]
  def change
    add_column :cities, :people_count, :integer
  end
end
