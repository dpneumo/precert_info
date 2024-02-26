class CreatePrecerts < ActiveRecord::Migration[7.1]
  def change
    create_table :precerts do |t|
      t.string :patientMRN
      t.references :service, null: true
      t.references :diagnosis, null: true
      t.references :provider, null: true
      t.references :insurer, null: true
      t.datetime :submitted
      t.datetime :approval
      t.string :confirmation
      t.datetime :closed
      t.text :note

      t.timestamps
    end
    add_index :precerts, :patientMRN
  end
end
