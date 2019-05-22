class CreateWorkSectors < ActiveRecord::Migration[5.1]
  def change
    create_table :work_sectors do |t|
      t.string :sector_name

      t.timestamps
    end
  end
end
