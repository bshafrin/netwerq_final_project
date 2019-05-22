class AddOutreachCountToPeople < ActiveRecord::Migration[5.1]
  def change
    add_column :people, :outreaches_count, :integer
  end
end
