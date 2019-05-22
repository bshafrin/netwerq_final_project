class AddOutreachCountToContactMethods < ActiveRecord::Migration[5.1]
  def change
    add_column :contact_methods, :outreaches_count, :integer
  end
end
