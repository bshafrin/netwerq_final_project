class AddPersonCountToWorkSectors < ActiveRecord::Migration[5.1]
  def change
    add_column :work_sectors, :people_count, :integer
  end
end
