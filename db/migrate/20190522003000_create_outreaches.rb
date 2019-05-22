class CreateOutreaches < ActiveRecord::Migration[5.1]
  def change
    create_table :outreaches do |t|
      t.integer :recipient_id
      t.text :notes
      t.boolean :response_tf
      t.integer :outreach_method_id

      t.timestamps
    end
  end
end
