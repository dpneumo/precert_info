class CreateContacts < ActiveRecord::Migration[7.1]
  def change
    create_table :contacts do |t|
      t.references :precert, null: false, foreign_key: true
      t.datetime :contact_date
      t.integer :duration
      t.text :note

      t.timestamps
    end
  end
end
